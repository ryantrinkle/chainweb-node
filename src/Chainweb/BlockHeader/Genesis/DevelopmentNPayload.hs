{-# LANGUAGE QuasiQuotes #-}

-- This module is auto-generated. DO NOT EDIT IT MANUALLY.

module Chainweb.BlockHeader.Genesis.DevelopmentNPayload ( payloadBlock ) where

import Data.Text.Encoding (encodeUtf8)
import Data.Yaml (decodeThrow)

import NeatInterpolation (text)

import Chainweb.Payload (PayloadWithOutputs)
import Chainweb.Utils (fromJuste)

payloadBlock :: PayloadWithOutputs
payloadBlock = fromJuste $ decodeThrow $ encodeUtf8 [text|
transactions:
- - eyJoYXNoIjoibmNfMlFVM1lqWlNZbm1BaEx0VmZDdFNnNkFvTUo1U1h2U2tETG01bEYtNCIsInNpZ3MiOltdLCJjbWQiOiJ7XCJuZXR3b3JrSWRcIjpudWxsLFwicGF5bG9hZFwiOntcImV4ZWNcIjp7XCJkYXRhXCI6bnVsbCxcImNvZGVcIjpcIihtb2R1bGUgY29pbiBHT1ZFUk5BTkNFXFxuXFxuICBAZG9jIFxcXCInY29pbicgcmVwcmVzZW50cyB0aGUgS2FkZW5hIENvaW4gQ29udHJhY3QuIFRoaXMgY29udHJhY3QgcHJvdmlkZXMgYm90aCB0aGUgXFxcXFxcbiAgXFxcXGJ1eS9yZWRlZW0gZ2FzIHN1cHBvcnQgaW4gdGhlIGZvcm0gb2YgJ2Z1bmQtdHgnLCBhcyB3ZWxsIGFzIHRyYW5zZmVyLCAgICAgICBcXFxcXFxuICBcXFxcY3JlZGl0LCBkZWJpdCwgY29pbmJhc2UsIGFjY291bnQgY3JlYXRpb24gYW5kIHF1ZXJ5LCBhcyB3ZWxsIGFzIFNQViBidXJuICAgIFxcXFxcXG4gIFxcXFxjcmVhdGUuIFRvIGFjY2VzcyB0aGUgY29pbiBjb250cmFjdCwgeW91IG1heSB1c2UgaXRzIGZ1bGx5LXF1YWxpZmllZCBuYW1lLCAgXFxcXFxcbiAgXFxcXG9yIGlzc3VlIHRoZSAnKHVzZSBjb2luKScgY29tbWFuZCBpbiB0aGUgYm9keSBvZiBhIG1vZHVsZSBkZWNsYXJhdGlvbi5cXFwiXFxuXFxuICBAbW9kZWxcXG4gICAgWyAoZGVmcHJvcGVydHkgY29uc2VydmVzLW1hc3NcXG4gICAgICAgICg9IChjb2x1bW4tZGVsdGEgY29pbi10YWJsZSAnYmFsYW5jZSkgMC4wKSlcXG5cXG4gICAgICAoZGVmcHJvcGVydHkgdmFsaWQtYWNjb3VudCAoYWNjb3VudDpzdHJpbmcpXFxuICAgICAgICAoYW5kXFxuICAgICAgICAgICg-PSAobGVuZ3RoIGFjY291bnQpIDMpXFxuICAgICAgICAgICg8PSAobGVuZ3RoIGFjY291bnQpIDI1NikpKVxcbiAgICBdXFxuXFxuICA7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICA7IFNjaGVtYXMgYW5kIFRhYmxlc1xcblxcbiAgKGRlZnNjaGVtYSBjb2luLXNjaGVtYVxcbiAgICBAZG9jIFxcXCJUaGUgY29pbiBjb250cmFjdCB0b2tlbiBzY2hlbWFcXFwiXFxuICAgIDtAbW9kZWwgWyAoaW52YXJpYW50ICg-PSBiYWxhbmNlIDAuMCkpIF0gOyBGViBwcm9ibGVtXFxuXFxuICAgIGJhbGFuY2U6ZGVjaW1hbFxcbiAgICBndWFyZDpndWFyZClcXG5cXG4gIChkZWZ0YWJsZSBjb2luLXRhYmxlOntjb2luLXNjaGVtYX0pXFxuXFxuICAoZGVmc2NoZW1hIHRyYW5zZmVyLXNjaGVtYVxcbiAgICBAZG9jIFxcXCJTY2hlbWEgZm9yIHlpZWxkZWQgdmFsdWUgaW4gY3Jvc3MtY2hhaW4gdHJhbnNmZXJzXFxcIlxcblxcbiAgICBjcmVhdGUtYWNjb3VudDpzdHJpbmdcXG4gICAgY3JlYXRlLWFjY291bnQtZ3VhcmQ6Z3VhcmRcXG4gICAgcXVhbnRpdHk6ZGVjaW1hbClcXG5cXG4gIDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cXG4gIDsgQ2FwYWJpbGl0aWVzXFxuXFxuICAoZGVmY2FwIFRSQU5TRkVSICgpXFxuICAgIFxcXCJBdXRvbm9tb3VzIGNhcGFiaWxpdHkgdG8gcHJvdGVjdCBkZWJpdCBhbmQgY3JlZGl0IGFjdGlvbnNcXFwiXFxuICAgIHRydWUpXFxuXFxuICAoZGVmY2FwIENPSU5CQVNFICgpXFxuICAgIFxcXCJNYWdpYyBjYXBhYmlsaXR5IHRvIHByb3RlY3QgbWluZXIgcmV3YXJkXFxcIlxcbiAgICB0cnVlKVxcblxcbiAgKGRlZmNhcCBHRU5FU0lTICgpXFxuICAgIFxcXCJNYWdpYyBjYXBhYmlsaXR5IGNvbnN0cmFpbmluZyBnZW5lc2lzIHRyYW5zYWN0aW9uc1xcXCJcXG4gICAgdHJ1ZSlcXG5cXG4gIChkZWZjYXAgRlVORF9UWCAoKVxcbiAgICBcXFwiTWFnaWMgY2FwYWJpbGl0eSB0byBleGVjdXRlIGdhcyBwdXJjaGFzZXMgYW5kIHJlZGVtcHRpb25zXFxcIlxcbiAgICB0cnVlKVxcblxcbiAgKGRlZmNhcCBBQ0NPVU5UX0dVQVJEIChhY2NvdW50KVxcbiAgICBcXFwiTG9va3VwIGFuZCBlbmZvcmNlIGd1YXJkcyBhc3NvY2lhdGVkIHdpdGggYW4gYWNjb3VudFxcXCJcXG4gICAgKHdpdGgtcmVhZCBjb2luLXRhYmxlIGFjY291bnQgeyBcXFwiZ3VhcmRcXFwiIDo9IGcgfVxcbiAgICAgIChlbmZvcmNlLWd1YXJkIGcpKSlcXG5cXG4gIChkZWZjYXAgR09WRVJOQU5DRSAoKVxcbiAgICAoZW5mb3JjZSBmYWxzZSBcXFwiRW5mb3JjZSBub24tdXBncmFkZWFiaWxpdHkgZXhjZXB0IGluIHRoZSBjYXNlIG9mIGEgaGFyZCBmb3JrXFxcIikpXFxuXFxuXFxuICA7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICA7IENvbnN0YW50c1xcblxcbiAgKGRlZmNvbnN0IENPSU5fQ0hBUlNFVCBDSEFSU0VUX0xBVElOMVxcbiAgICBcXFwiVGhlIGRlZmF1bHQgY29pbiBjb250cmFjdCBjaGFyYWN0ZXIgc2V0XFxcIilcXG5cXG4gIChkZWZjb25zdCBNSU5JTVVNX1BSRUNJU0lPTiAxMlxcbiAgICBcXFwiTWluaW11bSBhbGxvd2VkIHByZWNpc2lvbiBmb3IgY29pbiB0cmFuc2FjdGlvbnNcXFwiKVxcblxcbiAgKGRlZmNvbnN0IE1JTklNVU1fQUNDT1VOVF9MRU5HVEggM1xcbiAgICBcXFwiTWluaW11bSBhY2NvdW50IGxlbmd0aCBhZG1pc3NpYmxlIGZvciBjb2luIGFjY291bnRzXFxcIilcXG5cXG4gIChkZWZjb25zdCBNQVhJTVVNX0FDQ09VTlRfTEVOR1RIIDI1NlxcbiAgICBcXFwiTWF4aW11bSBhY2NvdW50IG5hbWUgbGVuZ3RoIGFkbWlzc2libGUgZm9yIGNvaW4gYWNjb3VudHNcXFwiKVxcblxcbiAgOyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxcbiAgOyBVdGlsaXRpZXNcXG5cXG4gIChkZWZ1biBlbmZvcmNlLXVuaXQgKGFtb3VudDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJFbmZvcmNlIG1pbmltdW0gcHJlY2lzaW9uIGFsbG93ZWQgZm9yIGNvaW4gdHJhbnNhY3Rpb25zXFxcIlxcblxcbiAgICAoZW5mb3JjZVxcbiAgICAgICg9IChmbG9vciBhbW91bnQgTUlOSU1VTV9QUkVDSVNJT04pXFxuICAgICAgICAgYW1vdW50KVxcbiAgICAgIChmb3JtYXQgXFxcIkFtb3VudCB2aW9sYXRlcyBtaW5pbXVtIHByZWNpc2lvbjoge31cXFwiIFthbW91bnRdKSlcXG4gICAgKVxcblxcbiAgKGRlZnVuIHZhbGlkYXRlLWFjY291bnQgKGFjY291bnQ6c3RyaW5nKVxcbiAgICBAZG9jIFxcXCJFbmZvcmNlIHRoYXQgYW4gYWNjb3VudCBuYW1lIGNvbmZvcm1zIHRvIHRoZSBjb2luIGNvbnRyYWN0IFxcXFxcXG4gICAgICAgICBcXFxcbWluaW11bSBhbmQgbWF4aW11bSBsZW5ndGggcmVxdWlyZW1lbnRzLCBhcyB3ZWxsIGFzIHRoZSAgICBcXFxcXFxuICAgICAgICAgXFxcXGxhdGluLTEgY2hhcmFjdGVyIHNldC5cXFwiXFxuXFxuICAgIChlbmZvcmNlXFxuICAgICAgKGlzLWNoYXJzZXQgQ09JTl9DSEFSU0VUIGFjY291bnQpXFxuICAgICAgKGZvcm1hdFxcbiAgICAgICAgXFxcIkFjY291bnQgZG9lcyBub3QgY29uZm9ybSB0byB0aGUgY29pbiBjb250cmFjdCBjaGFyc2V0OiB7fVxcXCJcXG4gICAgICAgIFthY2NvdW50XSkpXFxuXFxuICAgIChsZXQgKChhY2NvdW50LWxlbmd0aCAobGVuZ3RoIGFjY291bnQpKSlcXG5cXG4gICAgICAoZW5mb3JjZVxcbiAgICAgICAgKD49IGFjY291bnQtbGVuZ3RoIE1JTklNVU1fQUNDT1VOVF9MRU5HVEgpXFxuICAgICAgICAoZm9ybWF0XFxuICAgICAgICAgIFxcXCJBY2NvdW50IG5hbWUgZG9lcyBub3QgY29uZm9ybSB0byB0aGUgbWluIGxlbmd0aCByZXF1aXJlbWVudDoge31cXFwiXFxuICAgICAgICAgIFthY2NvdW50XSkpXFxuXFxuICAgICAgKGVuZm9yY2VcXG4gICAgICAgICg8PSBhY2NvdW50LWxlbmd0aCBNQVhJTVVNX0FDQ09VTlRfTEVOR1RIKVxcbiAgICAgICAgKGZvcm1hdFxcbiAgICAgICAgICBcXFwiQWNjb3VudCBuYW1lIGRvZXMgbm90IGNvbmZvcm0gdG8gdGhlIG1pbiBsZW5ndGggcmVxdWlyZW1lbnQ6IHt9XFxcIlxcbiAgICAgICAgICBbYWNjb3VudF0pKVxcbiAgICAgIClcXG4gIClcXG5cXG4gIDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cXG4gIDsgQ29pbiBDb250cmFjdFxcblxcbiAgKGRlZnVuIGJ1eS1nYXM6c3RyaW5nIChzZW5kZXI6c3RyaW5nIHRvdGFsOmRlY2ltYWwpXFxuICAgIEBkb2MgXFxcIlRoaXMgZnVuY3Rpb24gZGVzY3JpYmVzIHRoZSBtYWluICdnYXMgYnV5JyBvcGVyYXRpb24uIEF0IHRoaXMgcG9pbnQgXFxcXFxcbiAgICBcXFxcTUlORVIgaGFzIGJlZW4gY2hvc2VuIGZyb20gdGhlIHBvb2wsIGFuZCB3aWxsIGJlIHZhbGlkYXRlZC4gVGhlIFNFTkRFUiAgIFxcXFxcXG4gICAgXFxcXG9mIHRoaXMgdHJhbnNhY3Rpb24gaGFzIHNwZWNpZmllZCBhIGdhcyBsaW1pdCBMSU1JVCAobWF4aW11bSBnYXMpIGZvciAgICBcXFxcXFxuICAgIFxcXFx0aGUgdHJhbnNhY3Rpb24sIGFuZCB0aGUgcHJpY2UgaXMgdGhlIHNwb3QgcHJpY2Ugb2YgZ2FzIGF0IHRoYXQgdGltZS4gICAgXFxcXFxcbiAgICBcXFxcVGhlIGdhcyBidXkgd2lsbCBiZSBleGVjdXRlZCBwcmlvciB0byBleGVjdXRpbmcgU0VOREVSJ3MgY29kZS5cXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAoPiB0b3RhbCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgc2VuZGVyKSlcXG4gICAgICAgICAgIF1cXG5cXG4gICAgKHZhbGlkYXRlLWFjY291bnQgc2VuZGVyKVxcblxcbiAgICAoZW5mb3JjZS11bml0IHRvdGFsKVxcbiAgICAoZW5mb3JjZSAoPiB0b3RhbCAwLjApIFxcXCJnYXMgc3VwcGx5IG11c3QgYmUgYSBwb3NpdGl2ZSBxdWFudGl0eVxcXCIpXFxuXFxuICAgIChyZXF1aXJlLWNhcGFiaWxpdHkgKEZVTkRfVFgpKVxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUilcXG4gICAgICAoZGViaXQgc2VuZGVyIHRvdGFsKSlcXG4gICAgKVxcblxcbiAgKGRlZnVuIHJlZGVlbS1nYXM6c3RyaW5nIChtaW5lcjpzdHJpbmcgbWluZXItZ3VhcmQ6Z3VhcmQgc2VuZGVyOnN0cmluZyB0b3RhbDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJUaGlzIGZ1bmN0aW9uIGRlc2NyaWJlcyB0aGUgbWFpbiAncmVkZWVtIGdhcycgb3BlcmF0aW9uLiBBdCB0aGlzICAgIFxcXFxcXG4gICAgXFxcXHBvaW50LCB0aGUgU0VOREVSJ3MgdHJhbnNhY3Rpb24gaGFzIGJlZW4gZXhlY3V0ZWQsIGFuZCB0aGUgZ2FzIHRoYXQgICAgICBcXFxcXFxuICAgIFxcXFx3YXMgY2hhcmdlZCBoYXMgYmVlbiBjYWxjdWxhdGVkLiBNSU5FUiB3aWxsIGJlIGNyZWRpdGVkIHRoZSBnYXMgY29zdCwgICAgXFxcXFxcbiAgICBcXFxcYW5kIFNFTkRFUiB3aWxsIHJlY2VpdmUgdGhlIHJlbWFpbmRlciB1cCB0byB0aGUgbGltaXRcXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAoPiB0b3RhbCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgc2VuZGVyKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IG1pbmVyKSlcXG4gICAgICAgICAgIF1cXG5cXG4gICAgKHZhbGlkYXRlLWFjY291bnQgc2VuZGVyKVxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBtaW5lcilcXG4gICAgKGVuZm9yY2UtdW5pdCB0b3RhbClcXG5cXG4gICAgKHJlcXVpcmUtY2FwYWJpbGl0eSAoRlVORF9UWCkpXFxuICAgICh3aXRoLWNhcGFiaWxpdHkgKFRSQU5TRkVSKVxcbiAgICAgIChsZXQqICgoZmVlIChyZWFkLWRlY2ltYWwgXFxcImZlZVxcXCIpKVxcbiAgICAgICAgICAgICAocmVmdW5kICgtIHRvdGFsIGZlZSkpKVxcblxcbiAgICAgICAgKGVuZm9yY2UtdW5pdCBmZWUpXFxuXFxuICAgICAgICAoZW5mb3JjZSAoPj0gZmVlIDAuMClcXG4gICAgICAgICAgXFxcImZlZSBtdXN0IGJlIGEgbm9uLW5lZ2F0aXZlIHF1YW50aXR5XFxcIilcXG5cXG4gICAgICAgIChlbmZvcmNlICg-PSByZWZ1bmQgMC4wKVxcbiAgICAgICAgICBcXFwicmVmdW5kIG11c3QgYmUgYSBub24tbmVnYXRpdmUgcXVhbnRpdHlcXFwiKVxcblxcbiAgICAgICAgOyBkaXJlY3RseSB1cGRhdGUgaW5zdGVhZCBvZiBjcmVkaXRcXG4gICAgICAgIChpZiAoPiByZWZ1bmQgMC4wKVxcbiAgICAgICAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgc2VuZGVyXFxuICAgICAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOj0gYmFsYW5jZSB9XFxuICAgICAgICAgICAgKHVwZGF0ZSBjb2luLXRhYmxlIHNlbmRlclxcbiAgICAgICAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCI6ICgrIGJhbGFuY2UgcmVmdW5kKSB9KVxcbiAgICAgICAgICAgIClcXG4gICAgICAgICAgXFxcIm5vb3BcXFwiKVxcblxcbiAgICAgICAgKGlmICg-IGZlZSAwLjApXFxuICAgICAgICAgIChjcmVkaXQgbWluZXIgbWluZXItZ3VhcmQgZmVlKVxcbiAgICAgICAgICBcXFwibm9vcFxcXCIpXFxuICAgICAgICApKVxcbiAgICApXFxuXFxuICAoZGVmdW4gY3JlYXRlLWFjY291bnQ6c3RyaW5nIChhY2NvdW50OnN0cmluZyBndWFyZDpndWFyZClcXG4gICAgQGRvYyBcXFwiQ3JlYXRlIGFuIGFjY291bnQgZm9yIEFDQ09VTlQsIHdpdGggR1VBUkQgY29udHJvbGxpbmcgYWNjZXNzIHRvIHRoZSAgXFxcXFxcbiAgICBcXFxcYWNjb3VudC5cXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAodmFsaWQtYWNjb3VudCBhY2NvdW50KSkgXVxcblxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBhY2NvdW50KVxcblxcbiAgICAoaW5zZXJ0IGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDogMC4wXFxuICAgICAgLCBcXFwiZ3VhcmRcXFwiICAgOiBndWFyZFxcbiAgICAgIH0pXFxuICAgIClcXG5cXG4gIChkZWZ1biBhY2NvdW50LWJhbGFuY2U6ZGVjaW1hbCAoYWNjb3VudDpzdHJpbmcpXFxuICAgIEBkb2MgXFxcIkNoZWNrIGFuIGFjY291bnQncyBiYWxhbmNlLlxcXCJcXG5cXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IGFjY291bnQpKSBdXFxuXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IGFjY291bnQpXFxuXFxuICAgICh3aXRoLXJlYWQgY29pbi10YWJsZSBhY2NvdW50XFxuICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOj0gYmFsYW5jZSB9XFxuICAgICAgYmFsYW5jZVxcbiAgICAgIClcXG4gICAgKVxcblxcbiAgKGRlZnVuIGFjY291bnQtaW5mbzpvYmplY3QgKGFjY291bnQ6c3RyaW5nKVxcbiAgICBAZG9jIFxcXCJHZXQgYWxsIG9mIGFuIGFjY291bnQncyBpbmZvLiAgVGhpcyBpbmNsdWRlcyB0aGUgYmFsYW5jZSBhbmQgdGhlICAgIFxcXFxcXG4gICAgXFxcXGd1YXJkLlxcXCJcXG5cXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IGFjY291bnQpKSBdXFxuXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IGFjY291bnQpXFxuXFxuICAgIChyZWFkIGNvaW4tdGFibGUgYWNjb3VudClcXG4gICAgKVxcblxcbiAgKGRlZnVuIHJvdGF0ZS1ndWFyZDpzdHJpbmcgKGFjY291bnQ6c3RyaW5nIG5ldy1ndWFyZDpndWFyZClcXG4gICAgQGRvYyBcXFwiUm90YXRlIGd1YXJkIGFzc29jaWF0ZWQgd2l0aCBBQ0NPVU5UXFxcIlxcblxcbiAgICBAbW9kZWwgWyAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgYWNjb3VudCkpIF1cXG5cXG4gICAgKHZhbGlkYXRlLWFjY291bnQgYWNjb3VudClcXG5cXG4gICAgKHdpdGgtcmVhZCBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICB7IFxcXCJndWFyZFxcXCIgOj0gb2xkLWd1YXJkIH1cXG5cXG4gICAgICAoZW5mb3JjZS1ndWFyZCBvbGQtZ3VhcmQpXFxuXFxuICAgICAgKHVwZGF0ZSBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICAgIHsgXFxcImd1YXJkXFxcIiA6IG5ldy1ndWFyZCB9XFxuICAgICAgICApKSlcXG5cXG5cXG4gIChkZWZ1biB0cmFuc2ZlcjpzdHJpbmcgKHNlbmRlcjpzdHJpbmcgcmVjZWl2ZXI6c3RyaW5nIGFtb3VudDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJUcmFuc2ZlciBBTU9VTlQgYmV0d2VlbiBhY2NvdW50cyBTRU5ERVIgYW5kIFJFQ0VJVkVSIG9uIHRoZSBzYW1lICAgIFxcXFxcXG4gICAgXFxcXGNoYWluLiBUaGlzIGZhaWxzIGlmIGVpdGhlciBTRU5ERVIgb3IgUkVDRUlWRVIgZG9lcyBub3QgZXhpc3QuICAgICAgICAgICBcXFxcXFxuICAgIFxcXFxDcmVhdGUtb24tdHJhbnNmZXIgY2FuIGJlIGRvbmUgdXNpbmcgdGhlICd0cmFuc2Zlci1hbmQtY3JlYXRlJyBmdW5jdGlvbi5cXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSBjb25zZXJ2ZXMtbWFzcylcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICg-IGFtb3VudCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgc2VuZGVyKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IHJlY2VpdmVyKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICghPSBzZW5kZXIgcmVjZWl2ZXIpKSBdXFxuXFxuICAgIChlbmZvcmNlICghPSBzZW5kZXIgcmVjZWl2ZXIpXFxuICAgICAgXFxcInNlbmRlciBjYW5ub3QgYmUgdGhlIHJlY2VpdmVyIG9mIGEgdHJhbnNmZXJcXFwiKVxcblxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBzZW5kZXIpXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IHJlY2VpdmVyKVxcblxcbiAgICAoZW5mb3JjZSAoPiBhbW91bnQgMC4wKVxcbiAgICAgIFxcXCJ0cmFuc2ZlciBhbW91bnQgbXVzdCBiZSBwb3NpdGl2ZVxcXCIpXFxuXFxuICAgIChlbmZvcmNlLXVuaXQgYW1vdW50KVxcblxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUilcXG4gICAgICAoZGViaXQgc2VuZGVyIGFtb3VudClcXG4gICAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgcmVjZWl2ZXJcXG4gICAgICAgIHsgXFxcImd1YXJkXFxcIiA6PSBnIH1cXG5cXG4gICAgICAgIChjcmVkaXQgcmVjZWl2ZXIgZyBhbW91bnQpKVxcbiAgICAgIClcXG4gICAgKVxcblxcbiAgKGRlZnVuIHRyYW5zZmVyLWNyZWF0ZTpzdHJpbmdcXG4gICAgKCBzZW5kZXI6c3RyaW5nXFxuICAgICAgcmVjZWl2ZXI6c3RyaW5nXFxuICAgICAgcmVjZWl2ZXItZ3VhcmQ6Z3VhcmRcXG4gICAgICBhbW91bnQ6ZGVjaW1hbCApXFxuXFxuICAgIEBkb2MgXFxcIlRyYW5zZmVyIGJldHdlZW4gYWNjb3VudHMgU0VOREVSIGFuZCBSRUNFSVZFUiBvbiB0aGUgc2FtZSBjaGFpbi4gICAgXFxcXFxcbiAgICBcXFxcVGhpcyBmYWlscyBpZiB0aGUgU0VOREVSIGFjY291bnQgZG9lcyBub3QgZXhpc3QuIElmIHRoZSBSRUNFSVZFUiBhY2NvdW50IFxcXFxcXG4gICAgXFxcXGRvZXMgbm90IGV4aXN0LCBpdCBpcyBjcmVhdGVkIGFuZCBhc3NvY2lhdGVkIHdpdGggR1VBUkQuXFxcIlxcblxcbiAgICBAbW9kZWwgWyA7KHByb3BlcnR5IGNvbnNlcnZlcy1tYXNzKSA7OyBmYWlscyBvbiBtaXNzaW5nIHJvdywgRlYgcHJvYmxlbVxcbiAgICAgICAgICAgIChwcm9wZXJ0eSAoPiBhbW91bnQgMC4wKSlcXG4gICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgc2VuZGVyKSlcXG4gICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgcmVjZWl2ZXIpKVxcbiAgICAgICAgICAgIChwcm9wZXJ0eSAoIT0gc2VuZGVyIHJlY2VpdmVyKSkgXVxcblxcbiAgICAoZW5mb3JjZSAoIT0gc2VuZGVyIHJlY2VpdmVyKVxcbiAgICAgIFxcXCJzZW5kZXIgY2Fubm90IGJlIHRoZSByZWNlaXZlciBvZiBhIHRyYW5zZmVyXFxcIilcXG5cXG4gICAgKHZhbGlkYXRlLWFjY291bnQgc2VuZGVyKVxcbiAgICAodmFsaWRhdGUtYWNjb3VudCByZWNlaXZlcilcXG5cXG4gICAgKGVuZm9yY2UgKD4gYW1vdW50IDAuMClcXG4gICAgICBcXFwidHJhbnNmZXIgYW1vdW50IG11c3QgYmUgcG9zaXRpdmVcXFwiKVxcblxcbiAgICAoZW5mb3JjZS11bml0IGFtb3VudClcXG5cXG4gICAgKHdpdGgtY2FwYWJpbGl0eSAoVFJBTlNGRVIpXFxuICAgICAgKGRlYml0IHNlbmRlciBhbW91bnQpXFxuICAgICAgKGNyZWRpdCByZWNlaXZlciByZWNlaXZlci1ndWFyZCBhbW91bnQpKVxcbiAgICApXFxuXFxuICAoZGVmdW4gY29pbmJhc2U6c3RyaW5nIChhY2NvdW50OnN0cmluZyBhY2NvdW50LWd1YXJkOmd1YXJkIGFtb3VudDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJJbnRlcm5hbCBmdW5jdGlvbiBmb3IgdGhlIGluaXRpYWwgY3JlYXRpb24gb2YgY29pbnMuICBUaGlzIGZ1bmN0aW9uIFxcXFxcXG4gICAgXFxcXGNhbm5vdCBiZSB1c2VkIG91dHNpZGUgb2YgdGhlIGNvaW4gY29udHJhY3QuXFxcIlxcblxcbiAgICBAbW9kZWwgWyAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgYWNjb3VudCkpIF1cXG5cXG4gICAgKHZhbGlkYXRlLWFjY291bnQgYWNjb3VudClcXG4gICAgKGVuZm9yY2UtdW5pdCBhbW91bnQpXFxuXFxuICAgIChyZXF1aXJlLWNhcGFiaWxpdHkgKENPSU5CQVNFKSlcXG4gICAgKHdpdGgtY2FwYWJpbGl0eSAoVFJBTlNGRVIpXFxuICAgICAgKGNyZWRpdCBhY2NvdW50IGFjY291bnQtZ3VhcmQgYW1vdW50KSlcXG4gICAgKVxcblxcbiAgKGRlZnBhY3QgZnVuZC10eCAoc2VuZGVyOnN0cmluZyBtaW5lcjpzdHJpbmcgbWluZXItZ3VhcmQ6Z3VhcmQgdG90YWw6ZGVjaW1hbClcXG4gICAgQGRvYyBcXFwiJ2Z1bmQtdHgnIGlzIGEgc3BlY2lhbCBwYWN0IHRvIGZ1bmQgYSB0cmFuc2FjdGlvbiBpbiB0d28gc3RlcHMsICAgICBcXFxcXFxuICAgIFxcXFx3aXRoIHRoZSBhY3R1YWwgdHJhbnNhY3Rpb24gdHJhbnNwaXJpbmcgaW4gdGhlIG1pZGRsZTogICAgICAgICAgICAgICAgICAgXFxcXFxcbiAgICBcXFxcICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFxcXFxcXG4gICAgXFxcXCAgMSkgQSBidXlpbmcgcGhhc2UsIGRlYml0aW5nIHRoZSBzZW5kZXIgZm9yIHRvdGFsIGdhcyBhbmQgZmVlLCB5aWVsZGluZyBcXFxcXFxuICAgIFxcXFwgICAgIFRYX01BWF9DSEFSR0UuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXFxcXFxcbiAgICBcXFxcICAyKSBBIHNldHRsZW1lbnQgcGhhc2UsIHJlc3VtaW5nIFRYX01BWF9DSEFSR0UsIGFuZCBhbGxvY2F0aW5nIHRvIHRoZSAgIFxcXFxcXG4gICAgXFxcXCAgICAgY29pbmJhc2UgYWNjb3VudCBmb3IgdXNlZCBnYXMgYW5kIGZlZSwgYW5kIHNlbmRlciBhY2NvdW50IGZvciBiYWwtICBcXFxcXFxuICAgIFxcXFwgICAgIGFuY2UgKHVudXNlZCBnYXMsIGlmIGFueSkuXFxcIlxcblxcbiAgICBAbW9kZWwgWyAocHJvcGVydHkgKD4gdG90YWwgMC4wKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IHNlbmRlcikpXFxuICAgICAgICAgICAgIChwcm9wZXJ0eSAodmFsaWQtYWNjb3VudCBtaW5lcikpXFxuICAgICAgICAgICAgIDsocHJvcGVydHkgY29uc2VydmVzLW1hc3MpIG5vdCBzdXBwb3J0ZWQgeWV0XFxuICAgICAgICAgICBdXFxuXFxuICAgIChzdGVwIChidXktZ2FzIHNlbmRlciB0b3RhbCkpXFxuICAgIChzdGVwIChyZWRlZW0tZ2FzIG1pbmVyIG1pbmVyLWd1YXJkIHNlbmRlciB0b3RhbCkpXFxuICAgIClcXG5cXG4gIChkZWZ1biBkZWJpdDpzdHJpbmcgKGFjY291bnQ6c3RyaW5nIGFtb3VudDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJEZWJpdCBBTU9VTlQgZnJvbSBBQ0NPVU5UIGJhbGFuY2VcXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAoPiBhbW91bnQgMC4wKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IGFjY291bnQpKVxcbiAgICAgICAgICAgXVxcblxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBhY2NvdW50KVxcblxcbiAgICAoZW5mb3JjZSAoPiBhbW91bnQgMC4wKVxcbiAgICAgIFxcXCJkZWJpdCBhbW91bnQgbXVzdCBiZSBwb3NpdGl2ZVxcXCIpXFxuXFxuICAgIChlbmZvcmNlLXVuaXQgYW1vdW50KVxcblxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChUUkFOU0ZFUikpXFxuICAgICh3aXRoLWNhcGFiaWxpdHkgKEFDQ09VTlRfR1VBUkQgYWNjb3VudClcXG4gICAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOj0gYmFsYW5jZSB9XFxuXFxuICAgICAgICAoZW5mb3JjZSAoPD0gYW1vdW50IGJhbGFuY2UpIFxcXCJJbnN1ZmZpY2llbnQgZnVuZHNcXFwiKVxcbiAgICAgICAgKHVwZGF0ZSBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiAoLSBiYWxhbmNlIGFtb3VudCkgfVxcbiAgICAgICAgICApKSlcXG4gICAgKVxcblxcblxcbiAgKGRlZnVuIGNyZWRpdDpzdHJpbmcgKGFjY291bnQ6c3RyaW5nIGd1YXJkOmd1YXJkIGFtb3VudDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJDcmVkaXQgQU1PVU5UIHRvIEFDQ09VTlQgYmFsYW5jZVxcXCJcXG5cXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICg-IGFtb3VudCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgYWNjb3VudCkpXFxuICAgICAgICAgICBdXFxuXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IGFjY291bnQpXFxuXFxuICAgIChlbmZvcmNlICg-IGFtb3VudCAwLjApIFxcXCJjcmVkaXQgYW1vdW50IG11c3QgYmUgcG9zaXRpdmVcXFwiKVxcbiAgICAoZW5mb3JjZS11bml0IGFtb3VudClcXG5cXG4gICAgKHJlcXVpcmUtY2FwYWJpbGl0eSAoVFJBTlNGRVIpKVxcbiAgICAod2l0aC1kZWZhdWx0LXJlYWQgY29pbi10YWJsZSBhY2NvdW50XFxuICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiAwLjAsIFxcXCJndWFyZFxcXCIgOiBndWFyZCB9XFxuICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOj0gYmFsYW5jZSwgXFxcImd1YXJkXFxcIiA6PSByZXRnIH1cXG4gICAgICA7IHdlIGRvbid0IHdhbnQgdG8gb3ZlcndyaXRlIGFuIGV4aXN0aW5nIGd1YXJkIHdpdGggdGhlIHVzZXItc3VwcGxpZWQgb25lXFxuICAgICAgKGVuZm9yY2UgKD0gcmV0ZyBndWFyZClcXG4gICAgICAgIFxcXCJhY2NvdW50IGd1YXJkcyBkbyBub3QgbWF0Y2hcXFwiKVxcblxcbiAgICAgICh3cml0ZSBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDogKCsgYmFsYW5jZSBhbW91bnQpXFxuICAgICAgICAsIFxcXCJndWFyZFxcXCIgICA6IHJldGdcXG4gICAgICAgIH0pXFxuICAgICAgKSlcXG5cXG4gIChkZWZwYWN0IGNyb3NzLWNoYWluLXRyYW5zZmVyXFxuICAgICggZGVsZXRlLWFjY291bnQ6c3RyaW5nXFxuICAgICAgY3JlYXRlLWNoYWluLWlkOnN0cmluZ1xcbiAgICAgIGNyZWF0ZS1hY2NvdW50OnN0cmluZ1xcbiAgICAgIGNyZWF0ZS1hY2NvdW50LWd1YXJkOmd1YXJkXFxuICAgICAgcXVhbnRpdHk6ZGVjaW1hbCApXFxuXFxuICAgIEBkb2MgXFxcIlRyYW5zZmVyIFFVQU5USVRZIGNvaW5zIGZyb20gREVMRVRFLUFDQ09VTlQgb24gY3VycmVudCBjaGFpbiB0byAgICAgICAgICAgXFxcXFxcbiAgICAgICAgIFxcXFxDUkVBVEUtQUNDT1VOVCBvbiBDUkVBVEUtQ0hBSU4tSUQuIFRhcmdldCBjaGFpbiBpZCBtdXN0IG5vdCBiZSB0aGUgICAgICAgIFxcXFxcXG4gICAgICAgICBcXFxcY3VycmVudCBjaGFpbi1pZC4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcXFxcXFxuICAgICAgICAgXFxcXCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXFxcXFxcbiAgICAgICAgIFxcXFxTdGVwIDE6IEJ1cm4gUVVBTlRJVFktbWFueSBjb2lucyBmb3IgREVMRVRFLUFDQ09VTlQgb24gdGhlIGN1cnJlbnQgY2hhaW4sIFxcXFxcXG4gICAgICAgICBcXFxcYW5kIHByb2R1Y2UgYW4gU1BWIHJlY2VpcHQgd2hpY2ggbWF5IGJlIG1hbnVhbGx5IHJlZGVlbWVkIGZvciBhbiBTUFYgICAgICBcXFxcXFxuICAgICAgICAgXFxcXHByb29mLiBPbmNlIGEgcHJvb2YgaXMgb2J0YWluZWQsIHRoZSB1c2VyIG1heSBjYWxsICdjcmVhdGUtY29pbicgYW5kICAgICAgXFxcXFxcbiAgICAgICAgIFxcXFxjb25zdW1lIHRoZSBwcm9vZiBvbiBDUkVBVEUtQ0hBSU4tSUQsIGNyZWRpdGluZyBDUkVBVEUtQUNDT1VOVCBRVUFOVElUWS0gIFxcXFxcXG4gICAgICAgICBcXFxcbWFueSBjb2lucy4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcXFxcXFxuICAgICAgICAgXFxcXCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXFxcXFxcbiAgICAgICAgIFxcXFxTdGVwIDI6IENvbnN1bWUgYW4gU1BWIHByb29mIGZvciBhIG51bWJlciBvZiBjb2lucywgYW5kIGNyZWRpdCB0aGUgICAgICAgIFxcXFxcXG4gICAgICAgICBcXFxcYWNjb3VudCBhc3NvY2lhdGVkIHdpdGggdGhlIHByb29mIHRoZSBxdWFudGlmeSBvZiBjb2lucyBidXJuZWQgb24gdGhlICAgICBcXFxcXFxuICAgICAgICAgXFxcXHNvdXJjZSBjaGFpbiBieSB0aGUgYnVybiBhY2NvdW50LiBOb3RlOiBtdXN0IGJlIGNhbGxlZCBvbiB0aGUgY29ycmVjdCAgICAgXFxcXFxcbiAgICAgICAgIFxcXFxjaGFpbiBpZCBhcyBzcGVjaWZpZWQgaW4gdGhlIHByb29mLlxcXCJcXG5cXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICg-IHF1YW50aXR5IDAuMCkpXFxuICAgICAgICAgICAgIChwcm9wZXJ0eSAoIT0gY3JlYXRlLWNoYWluLWlkIFxcXCJcXFwiKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IGRlbGV0ZS1hY2NvdW50KSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IGNyZWF0ZS1hY2NvdW50KSlcXG4gICAgICAgICAgIF1cXG5cXG4gICAgKHN0ZXBcXG4gICAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUilcXG5cXG4gICAgICAgICh2YWxpZGF0ZS1hY2NvdW50IGRlbGV0ZS1hY2NvdW50KVxcbiAgICAgICAgKHZhbGlkYXRlLWFjY291bnQgY3JlYXRlLWFjY291bnQpXFxuXFxuICAgICAgICAoZW5mb3JjZSAoIT0gXFxcIlxcXCIgY3JlYXRlLWNoYWluLWlkKSBcXFwiZW1wdHkgY3JlYXRlLWNoYWluLWlkXFxcIilcXG4gICAgICAgIChlbmZvcmNlICghPSAoYXQgJ2NoYWluLWlkIChjaGFpbi1kYXRhKSkgY3JlYXRlLWNoYWluLWlkKVxcbiAgICAgICAgICBcXFwiY2Fubm90IHJ1biBjcm9zcy1jaGFpbiB0cmFuc2ZlcnMgdG8gdGhlIHNhbWUgY2hhaW5cXFwiKVxcblxcbiAgICAgICAgKGVuZm9yY2UgKD4gcXVhbnRpdHkgMC4wKVxcbiAgICAgICAgICBcXFwidHJhbnNmZXIgcXVhbnRpdHkgbXVzdCBiZSBwb3NpdGl2ZVxcXCIpXFxuXFxuICAgICAgICAoZW5mb3JjZS11bml0IHF1YW50aXR5KVxcblxcbiAgICAgICAgOzsgc3RlcCAxIC0gZGViaXQgZGVsZXRlLWFjY291bnQgb24gY3VycmVudCBjaGFpblxcbiAgICAgICAgKGRlYml0IGRlbGV0ZS1hY2NvdW50IHF1YW50aXR5KVxcblxcbiAgICAgICAgKGxldFxcbiAgICAgICAgICAoKHJldHY6b2JqZWN0e3RyYW5zZmVyLXNjaGVtYX1cXG4gICAgICAgICAgICB7IFxcXCJjcmVhdGUtYWNjb3VudFxcXCIgOiBjcmVhdGUtYWNjb3VudFxcbiAgICAgICAgICAgICwgXFxcImNyZWF0ZS1hY2NvdW50LWd1YXJkXFxcIiA6IGNyZWF0ZS1hY2NvdW50LWd1YXJkXFxuICAgICAgICAgICAgLCBcXFwicXVhbnRpdHlcXFwiIDogcXVhbnRpdHlcXG4gICAgICAgICAgICB9KSlcXG4gICAgICAgICAgKHlpZWxkIHJldHYgY3JlYXRlLWNoYWluLWlkKVxcbiAgICAgICAgICApKSlcXG5cXG4gICAgKHN0ZXBcXG4gICAgICAocmVzdW1lXFxuICAgICAgICB7IFxcXCJjcmVhdGUtYWNjb3VudFxcXCIgOj0gY3JlYXRlLWFjY291bnRcXG4gICAgICAgICwgXFxcImNyZWF0ZS1hY2NvdW50LWd1YXJkXFxcIiA6PSBjcmVhdGUtYWNjb3VudC1ndWFyZFxcbiAgICAgICAgLCBcXFwicXVhbnRpdHlcXFwiIDo9IHF1YW50aXR5XFxuICAgICAgICB9XFxuXFxuICAgICAgICA7OyBzdGVwIDIgLSBjcmVkaXQgY3JlYXRlIGFjY291bnQgb24gdGFyZ2V0IGNoYWluXFxuICAgICAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUilcXG4gICAgICAgICAgKGNyZWRpdCBjcmVhdGUtYWNjb3VudCBjcmVhdGUtYWNjb3VudC1ndWFyZCBxdWFudGl0eSkpXFxuICAgICAgICApKVxcbiAgICApXFxuXFxuXFxuICA7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICA7IENvaW4gYWxsb2NhdGlvbnNcXG5cXG4gIChkZWZzY2hlbWEgYWxsb2NhdGlvbi1zY2hlbWFcXG4gICAgQGRvYyBcXFwiR2VuZXNpcyBhbGxvY2F0aW9uIHJlZ2lzdHJ5XFxcIlxcbiAgICA7QG1vZGVsIFsgKGludmFyaWFudCAoPj0gYmFsYW5jZSAwLjApKSBdXFxuXFxuICAgIGJhbGFuY2U6ZGVjaW1hbFxcbiAgICBkYXRlOnRpbWVcXG4gICAgZ3VhcmQ6Z3VhcmRcXG4gICAgcmVkZWVtZWQ6Ym9vbClcXG5cXG4gIChkZWZ0YWJsZSBhbGxvY2F0aW9uLXRhYmxlOnthbGxvY2F0aW9uLXNjaGVtYX0pXFxuXFxuICAoZGVmdW4gY3JlYXRlLWFsbG9jYXRpb24tYWNjb3VudFxcbiAgICAoIGFjY291bnQ6c3RyaW5nXFxuICAgICAgZGF0ZTp0aW1lXFxuICAgICAga2V5c2V0LXJlZjpzdHJpbmdcXG4gICAgICBhbW91bnQ6ZGVjaW1hbFxcbiAgICApXFxuXFxuICAgIEBkb2MgXFxcIkFkZCBhbiBlbnRyeSB0byB0aGUgY29pbiBhbGxvY2F0aW9uIHRhYmxlLiBUaGlzIGZ1bmN0aW9uIFxcXFxcXG4gICAgICAgICBcXFxcYWxzbyBjcmVhdGVzIGEgY29ycmVzcG9uZGluZyBlbXB0eSBjb2luIGNvbnRyYWN0IGFjY291bnQgXFxcXFxcbiAgICAgICAgIFxcXFxvZiB0aGUgc2FtZSBuYW1lIGFuZCBndWFyZC4gUmVxdWlyZXMgR0VORVNJUyBjYXBhYmlsaXR5LiBcXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAodmFsaWQtYWNjb3VudCBhY2NvdW50KSkgXVxcblxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChHRU5FU0lTKSlcXG5cXG4gICAgKHZhbGlkYXRlLWFjY291bnQgYWNjb3VudClcXG4gICAgKGVuZm9yY2UgKD49IGFtb3VudCAwLjApXFxuICAgICAgXFxcImFsbG9jYXRpb24gYW1vdW50IG11c3QgYmUgbm9uLW5lZ2F0aXZlXFxcIilcXG5cXG4gICAgKGVuZm9yY2UtdW5pdCBhbW91bnQpXFxuXFxuICAgIChsZXRcXG4gICAgICAoKGd1YXJkOmd1YXJkIChrZXlzZXQtcmVmLWd1YXJkIGtleXNldC1yZWYpKSlcXG5cXG4gICAgICAoY3JlYXRlLWFjY291bnQgYWNjb3VudCBndWFyZClcXG5cXG4gICAgICAoaW5zZXJ0IGFsbG9jYXRpb24tdGFibGUgYWNjb3VudFxcbiAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiBhbW91bnRcXG4gICAgICAgICwgXFxcImRhdGVcXFwiIDogZGF0ZVxcbiAgICAgICAgLCBcXFwiZ3VhcmRcXFwiIDogZ3VhcmRcXG4gICAgICAgICwgXFxcInJlZGVlbWVkXFxcIiA6IGZhbHNlXFxuICAgICAgICB9KSkpXFxuXFxuICAoZGVmdW4gcmVsZWFzZS1hbGxvY2F0aW9uXFxuICAgICggYWNjb3VudDpzdHJpbmcgKVxcblxcbiAgICBAZG9jIFxcXCJSZWxlYXNlIGZ1bmRzIGFzc29jaWF0ZWQgd2l0aCBhbGxvY2F0aW9uIEFDQ09VTlQgaW50byBtYWluIGxlZGdlci4gICBcXFxcXFxuICAgICAgICAgXFxcXEFDQ09VTlQgbXVzdCBhbHJlYWR5IGV4aXN0IGluIG1haW4gbGVkZ2VyLiBBbGxvY2F0aW9uIGlzIGRlYWN0aXZhdGVkIFxcXFxcXG4gICAgICAgICBcXFxcYWZ0ZXIgcmVsZWFzZS5cXFwiXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAodmFsaWQtYWNjb3VudCBhY2NvdW50KSkgXVxcblxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBhY2NvdW50KVxcblxcbiAgICAod2l0aC1yZWFkIGFsbG9jYXRpb24tdGFibGUgYWNjb3VudFxcbiAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDo9IGJhbGFuY2VcXG4gICAgICAsIFxcXCJkYXRlXFxcIiA6PSByZWxlYXNlLXRpbWVcXG4gICAgICAsIFxcXCJyZWRlZW1lZFxcXCIgOj0gcmVkZWVtZWRcXG4gICAgICAsIFxcXCJndWFyZFxcXCIgOj0gZ3VhcmRcXG4gICAgICB9XFxuXFxuICAgICAgKGxldCAoKGN1cnItdGltZTp0aW1lIChhdCAnYmxvY2stdGltZSAoY2hhaW4tZGF0YSkpKSlcXG5cXG4gICAgICAgIChlbmZvcmNlIChub3QgcmVkZWVtZWQpXFxuICAgICAgICAgIFxcXCJhbGxvY2F0aW9uIGZ1bmRzIGhhdmUgYWxyZWFkeSBiZWVuIHJlZGVlbWVkXFxcIilcXG5cXG4gICAgICAgIChlbmZvcmNlXFxuICAgICAgICAgICg-PSBjdXJyLXRpbWUgcmVsZWFzZS10aW1lKVxcbiAgICAgICAgICAoZm9ybWF0IFxcXCJmdW5kcyBsb2NrZWQgdW50aWwge30uIGN1cnJlbnQgdGltZToge31cXFwiIFtyZWxlYXNlLXRpbWUgY3Vyci10aW1lXSkpXFxuXFxuICAgICAgICAoZW5mb3JjZS1ndWFyZCBndWFyZClcXG5cXG4gICAgICAgICh3aXRoLWNhcGFiaWxpdHkgKFRSQU5TRkVSKVxcbiAgICAgICAgICAoY3JlZGl0IGFjY291bnQgZ3VhcmQgYmFsYW5jZSlcXG5cXG4gICAgICAgICAgKHVwZGF0ZSBhbGxvY2F0aW9uLXRhYmxlIGFjY291bnRcXG4gICAgICAgICAgICB7IFxcXCJyZWRlZW1lZFxcXCIgOiB0cnVlXFxuICAgICAgICAgICAgLCBcXFwiYmFsYW5jZVxcXCIgOiAwLjBcXG4gICAgICAgICAgICB9KVxcblxcbiAgICAgICAgICBcXFwiQWxsb2NhdGlvbiBzdWNjZXNzZnVsbHkgcmVsZWFzZWQgdG8gbWFpbiBsZWRnZXJcXFwiKVxcbiAgICApKSlcXG5cXG4pXFxuXFxuKGNyZWF0ZS10YWJsZSBjb2luLXRhYmxlKVxcbihjcmVhdGUtdGFibGUgYWxsb2NhdGlvbi10YWJsZSlcXG5cIn19LFwic2lnbmVyc1wiOltdLFwibWV0YVwiOntcImNyZWF0aW9uVGltZVwiOjAsXCJ0dGxcIjoxNzI4MDAsXCJnYXNMaW1pdFwiOjAsXCJjaGFpbklkXCI6XCJcIixcImdhc1ByaWNlXCI6MCxcInNlbmRlclwiOlwiXCJ9LFwibm9uY2VcIjpcIlxcXCJnZW5lc2lzLTAxXFxcIlwifSJ9
  - eyJnYXMiOjAsInJlc3VsdCI6eyJzdGF0dXMiOiJzdWNjZXNzIiwiZGF0YSI6IlRhYmxlQ3JlYXRlZCJ9LCJyZXFLZXkiOiJuY18yUVUzWWpaU1lubUFoTHRWZkN0U2c2QW9NSjVTWHZTa0RMbTVsRi00IiwibG9ncyI6Ikc1VjBZTTUzN19QRWVwTndVRmVOZ0NLQllHWk1iT1BBb2NRbXhNSURpS28iLCJtZXRhRGF0YSI6bnVsbCwiY29udGludWF0aW9uIjpudWxsLCJ0eElkIjowfQ
- - eyJoYXNoIjoic09zeDZkeWRwZkg2eXViNkM3ZDVUUVFLWEtmdkVDQUlZb0tGSXdNZlNpWSIsInNpZ3MiOltdLCJjbWQiOiJ7XCJuZXR3b3JrSWRcIjpudWxsLFwicGF5bG9hZFwiOntcImV4ZWNcIjp7XCJkYXRhXCI6e1wic2VuZGVyMDdcIjpbXCI0YzMxZGM5ZWU3ZjI0MTc3Zjc4YjZmNTE4MDEyYTIwODMyNmUyYWYxZjM3YmIwYTI0MDViNTA1NmQwY2FkNjI4XCJdLFwic2VuZGVyMDFcIjpbXCI2YmUyZjQ4NWE3YWY3NWZlZGI0YjdmMTUzYTkwM2Y3ZTYwMDBjYTRhYTUwMTE3OWM5MWEyNDUwYjc3N2JkMmE3XCJdLFwic2VuZGVyMDZcIjpbXCI1ZmZjMWY3ZmVmN2E0NDczODYyNTc2MmY3NWE0MjI5NDU0OTUxZTAzZjJhZmM2ZjgxMzA5YzBjMWJkZjllZTZmXCJdLFwic2VuZGVyMDBcIjpbXCIzNjg4MjBmODBjMzI0YmJjN2MyYjA2MTA2ODhhN2RhNDNlMzlmOTFkMTE4NzMyNjcxY2Q5Yzc1MDBmZjQzY2NhXCJdLFwic2VuZGVyMDVcIjpbXCJmMDlkOGY2Mzk0YWVhNDI1ZmU2NzgzZDg4Y2Q4MTM2M2Q4MDE3ZjE2YWZkMzcxMWM1NzViZTBmNWNkNWM5YmI5XCJdLFwic2VuZGVyMDRcIjpbXCIyZDcwYWE0ZjY5N2MzYTNiOGRkNmQ5Nzc0NWFjMDc0ZWRjZmQwZWI2NWMzNzc3NGNkZTI1MTM1NDgzYmVhNzFlXCJdLFwibXVsdGktMDItMDMtMDQtYW55XCI6e1wicHJlZFwiOlwia2V5cy1hbnlcIixcImtleXNcIjpbXCIzYTlkZDUzMmQ3M2RhY2UxOTVkYmI2NGQxZGJhNjU3MmZiNzgzZDBmZGQzMjQ2ODVlMzJmYmRhMmY4OWY5OWE2XCIsXCI0M2YyYWRiMWRlMTkyMDAwY2IzNzc3YmFjYzdmOTgzYjY2MTRmZDljMTcxNWNkNDRjZDQ4NGI2ZDNhMGQzNGM4XCIsXCIyZDcwYWE0ZjY5N2MzYTNiOGRkNmQ5Nzc0NWFjMDc0ZWRjZmQwZWI2NWMzNzc3NGNkZTI1MTM1NDgzYmVhNzFlXCJdfSxcInNlbmRlcjA5XCI6W1wiYzU5ZDk4NDBiMGI2NjA5MDgzNjU0NmI3ZWI0YTczNjA2MjU3NTI3ZWM4YzJiNDgyMzAwZmQyMjkyNjRiMDdlNlwiXSxcInNlbmRlcjAzXCI6W1wiNDNmMmFkYjFkZTE5MjAwMGNiMzc3N2JhY2M3Zjk4M2I2NjE0ZmQ5YzE3MTVjZDQ0Y2Q0ODRiNmQzYTBkMzRjOFwiXSxcIm11bHRpLTAwLTAxXCI6W1wiMzY4ODIwZjgwYzMyNGJiYzdjMmIwNjEwNjg4YTdkYTQzZTM5ZjkxZDExODczMjY3MWNkOWM3NTAwZmY0M2NjYVwiLFwiNmJlMmY0ODVhN2FmNzVmZWRiNGI3ZjE1M2E5MDNmN2U2MDAwY2E0YWE1MDExNzljOTFhMjQ1MGI3NzdiZDJhN1wiXSxcInNlbmRlcjA4XCI6W1wiNjNiMmViYTRlZDcwZDQ2MTJkM2U3YmM5MGRiMmZiZjRjNzZmN2IwNzQzNjNlODZkNzNmMGJjNjE3ZjhlOGI4MVwiXSxcInNlbmRlcjAyXCI6W1wiM2E5ZGQ1MzJkNzNkYWNlMTk1ZGJiNjRkMWRiYTY1NzJmYjc4M2QwZmRkMzI0Njg1ZTMyZmJkYTJmODlmOTlhNlwiXX0sXCJjb2RlXCI6XCIoY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDBcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDBcXFwiKSAxMDAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDFcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDFcXFwiKSAxMTAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDJcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDJcXFwiKSAxMjAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDNcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDNcXFwiKSAxMzAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDRcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDRcXFwiKSAxNDAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDVcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDVcXFwiKSAxNTAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDZcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDZcXFwiKSAxNjAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDdcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDdcXFwiKSAxNzAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDhcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDhcXFwiKSAxODAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwic2VuZGVyMDlcXFwiIChyZWFkLWtleXNldCBcXFwic2VuZGVyMDlcXFwiKSAxOTAwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwibXVsdGktMDAtMDFcXFwiIChyZWFkLWtleXNldCBcXFwibXVsdGktMDAtMDFcXFwiKSAxMDEwMDAwMDAuMClcXG4oY29pbi5jb2luYmFzZSBcXFwibXVsdGktMDItMDMtMDQtYW55XFxcIiAocmVhZC1rZXlzZXQgXFxcIm11bHRpLTAyLTAzLTA0LWFueVxcXCIpIDEyMzQwMDAwMC4wKVwifX0sXCJzaWduZXJzXCI6W10sXCJtZXRhXCI6e1wiY3JlYXRpb25UaW1lXCI6MCxcInR0bFwiOjE3MjgwMCxcImdhc0xpbWl0XCI6MCxcImNoYWluSWRcIjpcIlwiLFwiZ2FzUHJpY2VcIjowLFwic2VuZGVyXCI6XCJcIn0sXCJub25jZVwiOlwiXFxcInRlc3RuZXQtZ3JhbnRzXFxcIlwifSJ9
  - eyJnYXMiOjAsInJlc3VsdCI6eyJzdGF0dXMiOiJzdWNjZXNzIiwiZGF0YSI6IldyaXRlIHN1Y2NlZWRlZCJ9LCJyZXFLZXkiOiJzT3N4NmR5ZHBmSDZ5dWI2QzdkNVRRUUtYS2Z2RUNBSVlvS0ZJd01mU2lZIiwibG9ncyI6IndOT0ItemVUbW81ZHkyVWJDWTM5cEgzaWw2SUFPM2ljeUxMclRCTzdxNlkiLCJtZXRhRGF0YSI6bnVsbCwiY29udGludWF0aW9uIjpudWxsLCJ0eElkIjoxfQ
- - eyJoYXNoIjoidV9Ob2tialZQSFVIckxsTDludE9mMHdiZTM4bDYzLWJuN3RxOVFMa1YycyIsInNpZ3MiOlt7InNpZyI6IjQxYTIzOTVmMWJiYTI4NzA0N2I1M2FjMTM4NzI5YjNmNGRhYmViMmVlNTM3ODQyNDkyNzE5NTNmN2FhOTcwOTA0Zjc4ZGYzYmRjNzNjOGU2ODM3M2UwYWVhYTIxMWQ4YzUyZTYxNTExZTA1NWI3ZDRhYzZlMjE1ZTEwZTMxNDBlIn1dLCJjbWQiOiJ7XCJuZXR3b3JrSWRcIjpudWxsLFwicGF5bG9hZFwiOntcImV4ZWNcIjp7XCJkYXRhXCI6e1wibnMtYWRtaW4ta2V5c2V0XCI6W1wiMzY4ODIwZjgwYzMyNGJiYzdjMmIwNjEwNjg4YTdkYTQzZTM5ZjkxZDExODczMjY3MWNkOWM3NTAwZmY0M2NjYVwiXSxcIm5zLW9wZXJhdGUta2V5c2V0XCI6W1wiMzY4ODIwZjgwYzMyNGJiYzdjMmIwNjEwNjg4YTdkYTQzZTM5ZjkxZDExODczMjY3MWNkOWM3NTAwZmY0M2NjYVwiXX0sXCJjb2RlXCI6XCJcXG4oZGVmaW5lLWtleXNldCAnbnMtYWRtaW4ta2V5c2V0IChyZWFkLWtleXNldCAnbnMtYWRtaW4ta2V5c2V0KSlcXG4oZGVmaW5lLWtleXNldCAnbnMtb3BlcmF0ZS1rZXlzZXQgKHJlYWQta2V5c2V0ICducy1vcGVyYXRlLWtleXNldCkpXFxuXFxuKG1vZHVsZSBucyAnbnMtYWRtaW4ta2V5c2V0XFxuICBcXFwiQWRtaW5pc3RlcnMgZGVmaW5pdGlvbiBvZiBuZXcgbmFtZXNwYWNlcyBpbiBDaGFpbndlYi5cXFwiXFxuXFxuICAoZGVmc2NoZW1hIHJlZy1lbnRyeVxcbiAgICBhZG1pbi1ndWFyZDpndWFyZFxcbiAgICBhY3RpdmU6Ym9vbClcXG5cXG4gIChkZWZ0YWJsZSByZWdpc3RyeTp7cmVnLWVudHJ5fSlcXG5cXG4gIChkZWZjYXAgT1BFUkFURSAoKVxcbiAgICAoZW5mb3JjZS1rZXlzZXQgJ25zLW9wZXJhdGUta2V5c2V0KSlcXG5cXG4gIChkZWZjb25zdCBHVUFSRF9TVUNDRVNTIChjcmVhdGUtdXNlci1ndWFyZCAoc3VjY2VzcykpKVxcbiAgKGRlZmNvbnN0IEdVQVJEX0ZBSUxVUkUgKGNyZWF0ZS11c2VyLWd1YXJkIChmYWlsdXJlKSkpXFxuXFxuICAoZGVmdW4gc3VjY2VzcyAoKVxcbiAgICB0cnVlKVxcbiAgKGRlZnVuIGZhaWx1cmUgKClcXG4gICAgKGVuZm9yY2UgZmFsc2UgXFxcIkRpc2FibGVkXFxcIikpXFxuXFxuICAoZGVmdW4gdmFsaWRhdGUtbmFtZSAobmFtZSlcXG4gICAgKGVuZm9yY2UgKCE9IFxcXCJcXFwiIG5hbWUpIFxcXCJFbXB0eSBuYW1lIG5vdCBhbGxvd2VkXFxcIilcXG4gICAgKGVuZm9yY2UgKDwgKGxlbmd0aCBuYW1lKSA2NCkgXFxcIk5hbWUgbXVzdCBiZSBsZXNzIHRoYW4gNjQgY2hhcmFjdGVycyBsb25nXFxcIilcXG4gICAgKGVuZm9yY2UgKGlzLWNoYXJzZXQgQ0hBUlNFVF9MQVRJTjEgbmFtZSlcXG4gICAgICAgICAgICAgXFxcIk5hbWUgbXVzdCBiZSBpbiBsYXRpbjEgY2hhcnNldFxcXCIpKVxcblxcbiAgKGRlZnVuIHZhbGlkYXRlOmJvb2xcXG4gICAgICAoIG5zLW5hbWU6c3RyaW5nXFxuICAgICAgICBucy1hZG1pbjpndWFyZFxcbiAgICAgICAgKVxcbiAgICBcXFwiIE1hbmFnZXMgbmFtZXNwYWNlIGluc3RhbGwgZm9yIENoYWlud2ViLiBSZXF1aXJlcyBhY3RpdmUgcm93IGluIHJlZ2lzdHJ5IFxcXFxcXG4gICAgXFxcXCBmb3IgTlMtTkFNRSB3aXRoIGd1YXJkIG1hdGNoaW5nIE5TLUFETUlOLlxcXCJcXG5cXG4gICAgKHZhbGlkYXRlLW5hbWUgbnMtbmFtZSlcXG5cXG4gICAgKHdpdGgtZGVmYXVsdC1yZWFkIHJlZ2lzdHJ5IG5zLW5hbWVcXG4gICAgICB7ICdhZG1pbi1ndWFyZCA6IG5zLWFkbWluXFxuICAgICAgLCAnYWN0aXZlIDogZmFsc2UgfVxcbiAgICAgIHsgJ2FkbWluLWd1YXJkIDo9IGFnXFxuICAgICAgLCAnYWN0aXZlIDo9IGlzLWFjdGl2ZSB9XFxuXFxuICAgICAgICAoZW5mb3JjZSBpcy1hY3RpdmUgXFxcIkluYWN0aXZlIG9yIHVucmVnaXN0ZXJlZCBuYW1lc3BhY2VcXFwiKVxcbiAgICAgICAgKGVuZm9yY2UgKD0gbnMtYWRtaW4gYWcpIFxcXCJBZG1pbiBndWFyZCBtdXN0IG1hdGNoIGd1YXJkIGluIHJlZ2lzdHJ5XFxcIilcXG5cXG4gICAgICAgIHRydWUpKVxcblxcbiAgKGRlZnVuIHdyaXRlLXJlZ2lzdHJ5OnN0cmluZ1xcbiAgICAgICggbnMtbmFtZTpzdHJpbmdcXG4gICAgICAgIGd1YXJkOmd1YXJkXFxuICAgICAgICBhY3RpdmU6Ym9vbFxcbiAgICAgICAgKVxcbiAgICBcXFwiIFdyaXRlIGVudHJ5IHdpdGggR1VBUkQgYW5kIEFDVElWRSBpbnRvIHJlZ2lzdHJ5IGZvciBOQU1FLiBcXFxcXFxuICAgIFxcXFwgR3VhcmRlZCBieSBvcGVyYXRlIGtleXNldC4gXFxcIlxcblxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChPUEVSQVRFKVxcblxcbiAgICAgICh2YWxpZGF0ZS1uYW1lIG5zLW5hbWUpXFxuXFxuICAgICAgKHdyaXRlIHJlZ2lzdHJ5IG5zLW5hbWVcXG4gICAgICAgIHsgJ2FkbWluLWd1YXJkOiBndWFyZFxcbiAgICAgICAgLCAnYWN0aXZlOiBhY3RpdmUgfSlcXG5cXG4gICAgICBcXFwiUmVnaXN0ZXIgZW50cnkgd3JpdHRlblxcXCIpKVxcblxcbiAgKGRlZnVuIHF1ZXJ5Om9iamVjdHtyZWctZW50cnl9XFxuICAgICAgKCBucy1uYW1lOnN0cmluZyApXFxuICAgIChyZWFkIHJlZ2lzdHJ5IG5zLW5hbWUpKVxcblxcbiAgKVxcblxcbihjcmVhdGUtdGFibGUgcmVnaXN0cnkpXFxuXFxuKHdyaXRlLXJlZ2lzdHJ5IFxcXCJrYWRlbmFcXFwiXFxuICAoa2V5c2V0LXJlZi1ndWFyZCAnbnMtb3BlcmF0ZS1rZXlzZXQpIHRydWUpXFxuKHdyaXRlLXJlZ2lzdHJ5IFxcXCJ1c2VyXFxcIiBHVUFSRF9GQUlMVVJFIHRydWUpXFxuKHdyaXRlLXJlZ2lzdHJ5IFxcXCJmcmVlXFxcIiBHVUFSRF9GQUlMVVJFIHRydWUpXFxuXFxuKGRlZmluZS1uYW1lc3BhY2UgXFxcImthZGVuYVxcXCJcXG4gIChrZXlzZXQtcmVmLWd1YXJkICducy1vcGVyYXRlLWtleXNldClcXG4gIChrZXlzZXQtcmVmLWd1YXJkICducy1vcGVyYXRlLWtleXNldCkpXFxuXFxuKGRlZmluZS1uYW1lc3BhY2UgXFxcInVzZXJcXFwiIEdVQVJEX1NVQ0NFU1MgR1VBUkRfRkFJTFVSRSlcXG4oZGVmaW5lLW5hbWVzcGFjZSBcXFwiZnJlZVxcXCIgR1VBUkRfU1VDQ0VTUyBHVUFSRF9GQUlMVVJFKVxcblwifX0sXCJzaWduZXJzXCI6W3tcInB1YktleVwiOlwiMzY4ODIwZjgwYzMyNGJiYzdjMmIwNjEwNjg4YTdkYTQzZTM5ZjkxZDExODczMjY3MWNkOWM3NTAwZmY0M2NjYVwifV0sXCJtZXRhXCI6e1wiY3JlYXRpb25UaW1lXCI6MCxcInR0bFwiOjE3MjgwMCxcImdhc0xpbWl0XCI6MCxcImNoYWluSWRcIjpcIlwiLFwiZ2FzUHJpY2VcIjowLFwic2VuZGVyXCI6XCJcIn0sXCJub25jZVwiOlwiXFxcImxvYWQtbnMtdGVzdG5ldC1zZW5kZXIwMFxcXCJcIn0ifQ
  - eyJnYXMiOjAsInJlc3VsdCI6eyJzdGF0dXMiOiJzdWNjZXNzIiwiZGF0YSI6Ik5hbWVzcGFjZSBkZWZpbmVkOiBmcmVlIn0sInJlcUtleSI6InVfTm9rYmpWUEhVSHJMbEw5bnRPZjB3YmUzOGw2My1ibjd0cTlRTGtWMnMiLCJsb2dzIjoiRHdwc2xkQVhleE1qSXpjYWt3M29XQWxKMkltX1pXVDNqZDkwZ0J0VExXayIsIm1ldGFEYXRhIjpudWxsLCJjb250aW51YXRpb24iOm51bGwsInR4SWQiOjJ9
minerData: eyJhY2NvdW50IjoiTm9NaW5lciIsInByZWRpY2F0ZSI6IjwiLCJwdWJsaWMta2V5cyI6W119
transactionsHash: 27UOb8qXbYM94BTeixdbQ20pZIutLPxpFv_FWgFnsx8
outputsHash: LPd7Lz6uu6WdgNqNC8ihiKRqZK9tidUnFNTkWBfWpSk
payloadHash: dsADiMWmsJO99_KXyktpsEd_RPjKniMkxQywgoMq7uY
coinbase: eyJnYXMiOjAsInJlc3VsdCI6eyJzdGF0dXMiOiJzdWNjZXNzIiwiZGF0YSI6Ik5PX0NPSU5CQVNFIn0sInJlcUtleSI6IkRsZFJ3Q2JsUTdMb3F5NndZSm5hb2RIbDMwZDNqM2VILXF0RnpmRXY0NmciLCJsb2dzIjpudWxsLCJtZXRhRGF0YSI6bnVsbCwiY29udGludWF0aW9uIjpudWxsLCJ0eElkIjpudWxsfQ

|]