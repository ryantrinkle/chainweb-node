{-# LANGUAGE CPP #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeApplications #-}

-- |
-- Module: Main
-- Copyright: Copyright © 2018 Kadena LLC.
-- License: MIT
-- Maintainer: Lars Kuhtz <lars@kadena.io>
-- Stability: experimental
--
-- TODO
--
module Main
( main
) where

import Configuration.Utils hiding (Error, (<.>))

import Control.Concurrent
import Control.Concurrent.Async
import Control.DeepSeq
import Control.Lens hiding ((.=), (<.>))
import Control.Monad
import Control.Monad.Catch
import Control.Monad.STM

import qualified Data.ByteString.Char8 as B8
import Data.Foldable
import Data.Function
import qualified Data.HashSet as HS
import Data.Maybe
#if !MIN_VERSION_base(4,11,0)
import Data.Semigroup hiding (option)
#endif
import qualified Data.Text as T

import GHC.Generics

import qualified Network.HTTP.Client as HTTP

import Numeric.Natural

import qualified Streaming.Prelude as SP

import System.FilePath
import qualified System.Logger as L
import System.LogLevel
import qualified System.Random.MWC as MWC
import qualified System.Random.MWC.Distributions as MWC

-- internal modules

import Chainweb.BlockHash
import Chainweb.BlockHeader
import Chainweb.ChainDB
import Chainweb.ChainDB.Queries
import Chainweb.ChainDB.SyncSession
import Chainweb.ChainId
import Chainweb.Graph
import Chainweb.HostAddress
import Chainweb.NodeId
import Chainweb.RestAPI
import Chainweb.Utils
import Chainweb.Version

import Data.DiGraph
import Data.LogMessage

import P2P.Node
import P2P.Node.Configuration
import P2P.Node.PeerDB
import P2P.Session

import Utils.Gexf
import Utils.Logging

-- -------------------------------------------------------------------------- --
-- Configuration of Example

data P2pExampleConfig = P2pExampleConfig
    { _numberOfNodes :: !Natural
    , _maxSessionCount :: !Natural
    , _maxPeerCount :: !Natural
    , _sessionTimeoutSeconds :: !Natural
    , _meanSessionSeconds :: !Natural
    , _meanBlockTimeSeconds :: !Natural
    , _exampleChainId :: !ChainId
    , _logConfig :: !L.LogConfig
    , _sessionsLoggerConfig :: !(EnableConfig JsonLoggerConfig)
    }
    deriving (Show, Eq, Ord, Generic)

makeLenses ''P2pExampleConfig

defaultP2pExampleConfig :: P2pExampleConfig
defaultP2pExampleConfig = P2pExampleConfig
    { _numberOfNodes = 10
    , _maxSessionCount =  6
    , _maxPeerCount = 50
    , _sessionTimeoutSeconds = 40
    , _meanSessionSeconds = 20
    , _meanBlockTimeSeconds = 10
    , _exampleChainId = testChainId 0
    , _logConfig = L.defaultLogConfig
        & L.logConfigLogger . L.loggerConfigThreshold .~ L.Info
    , _sessionsLoggerConfig = EnableConfig True defaultJsonLoggerConfig
    }

instance ToJSON P2pExampleConfig where
    toJSON o = object
        [ "numberOfNodes" .= _numberOfNodes o
        , "maxSessionCount" .= _maxSessionCount o
        , "maxPeerCount" .= _maxPeerCount o
        , "sessionTimoutSeconds" .= _sessionTimeoutSeconds o
        , "meanSessionSeconds" .= _meanSessionSeconds o
        , "meanBlockTimeSeconds" .= _meanBlockTimeSeconds o
        , "exampleChainId" .= _exampleChainId o
        , "logConfig" .= _logConfig o
        , "sessionsLoggerConfig" .= _sessionsLoggerConfig o
        ]

instance FromJSON (P2pExampleConfig -> P2pExampleConfig) where
    parseJSON = withObject "P2pExampleConfig" $ \o -> id
        <$< numberOfNodes ..: "numberOfNodes" % o
        <*< maxSessionCount ..: "maxSessionCount" % o
        <*< maxPeerCount ..: "maxPeerCount" % o
        <*< sessionTimeoutSeconds ..: "sessionTimeoutSeconds" % o
        <*< meanSessionSeconds ..: "meanSessionSeconds" % o
        <*< meanBlockTimeSeconds ..: "meanBlockTimeSeconds" % o
        <*< exampleChainId ..: "exampleChainId" % o
        <*< logConfig %.: "logConfig" % o
        <*< sessionsLoggerConfig %.: "sessionsLoggerConfig" % o

pP2pExampleConfig :: MParser P2pExampleConfig
pP2pExampleConfig = id
    <$< numberOfNodes .:: option auto
        % long "number-of-nodes"
        <> short 'n'
        <> help "number of nodes to run in the example"
    <*< maxSessionCount .:: option auto
        % long "max-session-count"
        <> short 'm'
        <> help "maximum number of sessions that are active at any time"
    <*< maxPeerCount .:: option auto
        % long "max-peer-count"
        <> short 'p'
        <> help "maximum number of entries in the peer database"
    <*< sessionTimeoutSeconds .:: option auto
        % long "session-timeout"
        <> short 's'
        <> help "timeout for sessions in seconds"
    <*< meanSessionSeconds .:: option auto
        % long "mean-session-time"
        <> short 't'
        <> help "mean time of a session in seconds"
    <*< meanBlockTimeSeconds .:: option auto
        % long "mean-block-time"
        <> short 'b'
        <> help "mean time for mining a block seconds"
    <*< exampleChainId .:: option auto
        % long "chainid"
        <> short 'c'
        <> help "the chain id that is used in the example"
    <*< logConfig %:: L.pLogConfig
    <*< sessionsLoggerConfig %::
        pEnableConfig "sessions-logger" % pJsonLoggerConfig (Just "sessions-")

-- -------------------------------------------------------------------------- --
-- Main

mainInfo :: ProgramInfo P2pExampleConfig
mainInfo = programInfo "P2P Example" pP2pExampleConfig defaultP2pExampleConfig

main :: IO ()
main = runWithConfiguration mainInfo $ \config ->
    withExampleLogger
        (_logConfig config)
        (_sessionsLoggerConfig config)
        (example config)

-- -------------------------------------------------------------------------- --
-- Example


example :: P2pExampleConfig -> Logger -> IO ()
example conf logger =
    withAsync (node cid t logger conf bootstrapConfig bootstrapNodeId bootstrapPort)
        $ \bootstrap -> do
            mapConcurrently_ (uncurry $ node cid t logger conf p2pConfig) nodePorts
            wait bootstrap

  where
    cid = _exampleChainId conf
    t = _meanSessionSeconds conf

    -- P2P node configuration
    --
    p2pConfig = (defaultP2pConfiguration Test)
        { _p2pConfigMaxSessionCount = _maxSessionCount conf
        , _p2pConfigMaxPeerCount = _maxPeerCount conf
        , _p2pConfigSessionTimeout = int $ _sessionTimeoutSeconds conf
        }

    -- Configuration for bootstrap node
    --
    bootstrapPeer = head . toList $ _p2pConfigKnownPeers p2pConfig
    bootstrapConfig = p2pConfig
        & p2pConfigPeerId ?~ _peerId bootstrapPeer

    bootstrapPort = view hostAddressPort $ _peerAddr bootstrapPeer
    bootstrapNodeId = NodeId cid 0

    -- Other nodes
    --
    nodePorts =
        [ (NodeId cid i, bootstrapPort + int i)
        | i <- [1 .. int (_numberOfNodes conf) - 1]
        ]


-- -------------------------------------------------------------------------- --
-- Example P2P Client Sessions

timer :: Natural -> IO ()
timer t = do
    gen <- MWC.createSystemRandom
    timeout <- MWC.geometric1 (1 / (int t * 1000000)) gen
    threadDelay timeout

chainDbSyncSession :: Natural -> ChainDb -> P2pSession
chainDbSyncSession t db logFun env =
    withAsync (timer t) $ \timerAsync ->
    withAsync (syncSession db logFun env) $ \sessionAsync ->
        waitEitherCatchCancel timerAsync sessionAsync >>= \case
            Left (Left e) -> do
                logg Info $ "session timer failed " <> sshow e
                return False
            Left (Right ()) -> do
                logg Info "session killed by timer"
                return False
            Right (Left e) -> do
                logg Warn $ "Session failed: " <> sshow e
                return False
            Right (Right a) -> do
                logg Warn "Session succeeded"
                return a
  where
    logg :: LogFunctionText
    logg = logFun

-- -------------------------------------------------------------------------- --
-- Test Node

node
    :: ChainId
    -> Natural
    -> Logger
    -> P2pExampleConfig
    -> P2pConfiguration
    -> NodeId
    -> Port
    -> IO ()
node cid t logger conf p2pConfig nid port =
    L.withLoggerLabel ("node", toText nid) logger $ \logger' -> do

        let logfun = loggerFunText logger'
        logfun Info "start test node"

        withChainDb cid nid
            $ \cdb -> withPeerDb p2pConfig
            $ \pdb -> withAsync (serveChainwebOnPort port Test
                [(cid, cdb)] -- :: [(ChainId, ChainDb)]
                [(cid, pdb)] -- :: [(ChainId, PeerDb)]
                )
            $ \server -> do
                logfun Info "started server"
                runConcurrently
                    $ Concurrently (miner logger' conf nid cdb)
                    <> Concurrently (syncer cid logger' p2pConfig cdb pdb port t)
                    <> Concurrently (monitor logger' cdb)
                wait server

withChainDb :: ChainId -> NodeId -> (ChainDb -> IO b) -> IO b
withChainDb cid nid = bracket start stop
  where
    start = initChainDb Configuration
        { _configRoot = genesisBlockHeader Test graph cid
        }
    stop db = do
        l <- SP.toList_ $ SP.map dbEntry $ chainDbHeaders db Nothing Nothing Nothing
        B8.writeFile ("headersgraph" <.> nidPath <.> "tmp.gexf") $ blockHeaders2gexf l
        closeChainDb db

    graph = toChainGraph (const cid) singleton

    nidPath = T.unpack . T.replace "/" "." $ toText nid

-- -------------------------------------------------------------------------- --
-- Syncer

-- | Synchronized the local block database copy over the P2P network.
--
syncer
    :: ChainId
    -> Logger
    -> P2pConfiguration
    -> ChainDb
    -> PeerDb
    -> Port
    -> Natural
    -> IO ()
syncer cid logger conf cdb pdb port t =
    L.withLoggerLabel ("component", "syncer") logger $ \syncLogger -> do
        let syncLogg = loggerFunText syncLogger

        -- Create P2P client node
        mgr <- HTTP.newManager HTTP.defaultManagerSettings
        n <- L.withLoggerLabel ("component", "syncer/p2p") logger $ \sessionLogger -> do
            p2pCreateNode Test cid conf (loggerFun sessionLogger) pdb ha mgr (chainDbSyncSession t cdb)

        -- Run P2P client node
        syncLogg Info "initialized syncer"
        p2pStartNode conf n `finally` do
            p2pStopNode n
            syncLogg Info "stopped syncer"

  where
    ha = fromJust . readHostAddressBytes $ "localhost:" <> sshow port

-- -------------------------------------------------------------------------- --
-- Miner

-- | A miner creates new blocks headers on the top of the longest branch in
-- the chain database with a mean rate of meanBlockTimeSeconds. Mind blocks
-- are added to the database.
--
-- For testing the difficulty is trivial, so that the target is 'maxBound' and
-- each nonce if accepted. Block creation is delayed through through
-- 'threadDelay' with an geometric distribution.
--
miner :: Logger -> P2pExampleConfig -> NodeId -> ChainDb -> IO ()
miner logger conf nid db = L.withLoggerLabel ("component", "miner") logger $ \logger' -> do
    let logg = loggerFunText logger'
    logg Info "Started Miner"
    gen <- MWC.createSystemRandom
    go logg gen (1 :: Int)
  where
    go logg gen i = do

        -- mine new block
        --
        d <- MWC.geometric1
            (1 / (int (_numberOfNodes conf) * int (_meanBlockTimeSeconds conf) * 1000000))
            gen
        threadDelay d

        -- get db snapshot
        --
        s <- snapshot db

        -- pick parent from longest branch
        --
        let bs = branches s
        p <- maximumBy (compare `on` rank)
            <$> mapM (`getEntryIO` s) (HS.toList bs)

        -- create new (test) block header
        --
        let e = entry $ testBlockHeader nid adjs (Nonce 0) (dbEntry p)

        -- Add block header to the database
        --
        s' <- insert e s
        void $ syncSnapshot s'
        _ <- logg Debug $ "published new block " <> sshow i

        -- continue
        --
        go logg gen (i + 1)

    adjs = BlockHashRecord mempty


-- -------------------------------------------------------------------------- --
-- Monitor

data Stats = Stats
    { _chainHeight :: !Natural
    , _branchCount :: !Natural
    , _branchHeightHistogram :: ![Natural] -- not yet implemented
    , _blockHeaderCount :: !Natural
    }
    deriving (Show, Eq, Ord, Generic)
    deriving anyclass (ToJSON, NFData)

instance Semigroup Stats where
    a <> b = Stats
        { _chainHeight = (max `on` _chainHeight) a b
        , _branchCount = (max `on` _branchCount) a b
        , _branchHeightHistogram = (zipWith (+) `on` _branchHeightHistogram) a b
        , _blockHeaderCount = ((+) `on` _blockHeaderCount) a b
        }

instance Monoid Stats where
    mempty = Stats 0 0 [] 0
    mappend = (<>)

-- | Collects statistics about local block database copy
--
monitor :: Logger -> ChainDb -> IO ()
monitor logger db =
    L.withLoggerLabel ("component", "monitor") logger $ \logger' -> do
        let logg = loggerFun logger'
        logg Info $ TextLog "Initialized Monitor"
        us <- updates db
        go (loggerFun logger') us mempty
  where
    go logg us stat = do
        void $ atomically $ updatesNext us
        s <- snapshot db

        let bs = branches s
        maxBranch <- maximumBy (compare `on` rank)
            <$> mapM (`getEntryIO` s) (HS.toList bs)

        let stat' = stat <> Stats
                { _chainHeight = rank maxBranch
                , _branchCount = fromIntegral $ length bs
                , _branchHeightHistogram = []
                , _blockHeaderCount = 1
                }

        void $ logg Info $ JsonLog stat'
        go logg us stat'
