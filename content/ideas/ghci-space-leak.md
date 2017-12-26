---
title: Fix GHCi space leaks, which potentially impact all editor tooling
---

Most (all?) editor tooling uses GHCi-as-a-library and essentially keeps "reloading" your source-files in the GHCi session. This allows your editor tooling to type-check your files "on the fly" and report compile errors as you edit your source code. However, GHCi has a nasty space-leak, where it retains some bindings across reloads. So, for long-lived GHCi sessions, or for very large projects, the GHCi memory usage keeps increasing over time, eventually causing slow-down or sluggishness of the entire code-typecheck-debug cycle.

Related tickets:

* https://ghc.haskell.org/trac/ghc/ticket/12848
* https://ghc.haskell.org/trac/ghc/ticket/14336
* https://github.com/commercialhaskell/intero/issues/84

**Mentors**: ??
