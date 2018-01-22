---
title: ﻿Hi Haddock
---

*...or how to get Haddock docstrings into .hi files*


A long-standing issue with Haskell’s documentation tool [Haddock] is
that it needs to effectively re-perform a large part of the
parse/template-haskell/typecheck compilation pipeline in order to
extract the necessary information from Haskell source for generating
rendered Haddock documentation. This makes Haddock generation a costly
operation, and makes for a poor developer experience.


An equally long-standing suggestion to address this issue
(c.f. <https://mail.haskell.org/pipermail/ghc-devs/2014-March/004355.html>)
is to have GHC include enough information in the generated `.hi`
interface files in order to avoid Haddock having to duplicate that
work. This would pave the way for following use-cases and/or have the
following benefits:


- Significantly speed up Haddock generation by avoiding redundant work. 

- On-the-fly/lazy after-the-fact Haddock generation in
  `cabal new-haddock` for already build/installed Cabal library packages.

- Add native support for a `:doc` command in GHCi’s REPL and editor
  tooling ([ghc-mod]/[HIE]) similar to the one available in other
  languages (c.f.
  the [Idris REPL](http://docs.idris-lang.org/en/latest/reference/repl.html#getting-type-information)
  or the Python REPL)

- Allows downstream tooling like Hoogle or [Hayoo!] to index
  documentation right from interface files.

- Simplify Haddock’s code base.


## Proposed implementation strategy

This proposal focuses on making the needed changes to GHC’s
codebase. The subsequent changes to Haddock are considered future work
and are out of scope for this proposal.


- The student would add two new fields to GHC’s `ModIface` and
  `ModGuts` resembling `ifaceDocMap` and `ifaceArgMap` from Haddock’s
  interface files
  (c.f. <https://github.com/haskell/haddock/blob/master/haddock-api/src/Haddock/Types.hs#L111>).
- Populate `ModGuts`
  (<https://github.com/ghc/ghc/blob/e237e1f132d0c0e1d9bf24d21cf688110305fb28/compiler/main/HscTypes.hs#L1255>)
  with the documentation for declarations (taken from the
  `ParsedSource`).
- Teach `MkIface`
  (<https://github.com/ghc/ghc/blob/e237e1f132d0c0e1d9bf24d21cf688110305fb28/compiler/iface/MkIface.hs>)
  to serialise the collected documentation.
- As a simple way to validate the new ability, teach GHCi’s `:info`
  (or alternatively add a new `:doc` command) how to read the
  documentation from loaded interface files (pretty rendering is not
  necessary at this point; just dump the raw comment strings).


An implementation needs to make sure to load the documentation as lazy
as possible from the interfaces as it might impose a performance hit
in the common case.


## Future work

Make Haddock use the GHC’s interface files to produce documentation
and thereby simplify its codebase; also figure out how to speedup
Haddock’s `--hyperlinked-source` feature.


[Haddock]: https://www.haskell.org/haddock
[GHC]: https://www.haskell.org/ghc
[Hayoo!]: https://hayoo.fh-wedel.de/
[Hoogle]: http://hoogle.haskell.org/
[HIE]: https://github.com/haskell/haskell-ide-engine
[ghc-mod]: https://hackage.haskell.org/package/ghc-mod

**Mentors**: Alex Biehl, Herbert Valerio Riedel

**Difficulty**: Advanced
