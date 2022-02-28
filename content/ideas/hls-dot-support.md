---
title: Support `OverloadedRecordDot` in Haskell Language Server
---

[Haskell Language Server][hls] (HLS) has support for many GHC language features,
but new ones (particularly ones that add syntax) sometimes require additional work.
Currently HLS does [not](https://github.com/haskell/haskell-language-server/issues/2732) 
have good support for `OverloadedRecordDot`, introduced in GHC 9.2.

The following improvements would bring us up to a reasonable level of support:

- Hover information for fields accessed through dot notation.
- Completions for record fields after a dot.

Once this is completed, more advanced support could be provided:

- Completions for [virtual record fields](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/exts/hasfield.html#virtual-record-fields).
- Code actions to rewrite non-dot-using field accesses into dot-using field accesses.
- More as inspiration strikes.

[hls]: https://haskell-language-server.readthedocs.io/en/latest/

**Potential Mentors**: Michael Peyton Jones/Pepe Iborra

**Difficulty**: Medium

**Size**: 175 hours 
