---
title: Complete Cabal's Nix-style `cabal new-build`
---

`new-build` is a major reworking of how Cabal and cabal-install work internally
that unifies the old build commands and sandboxes, and is inspired by concepts
from Nix. `new-build` significantly improves developer experience by addressing
common problems which were attributed to "Cabal Hell".
See also [Edward's blog post](http://blog.ezyang.com/2016/05/announcing-cabal-new-build-nix-style-local-builds/)
for an introduction to `new-build` and a more detailed explanation.

Last year a lot of progress was made, and `cabal new-build` is already gaining
popularity, despite being incomplete; we're quite close, but we're not there yet!

There is likely too much for a single student to complete in a single summer, so
we welcome proposals that include some reasonable subset of the functionality
listed below.

In order to reach the major "Cabal 3.0" milestone, which denotes switching over
to the `new-build` infrastructure as the default (thus finally retiring the
old/sandbox commands), the following critical features need to be completed or
implemented:

* Complete `cabal new-install` (see [cabal#4558](https://github.com/haskell/cabal/issues/4558)
  for design and status)
* Implement `cabal new-sdist` command
* Implement `cabal new-clean` command (see [cabal#3835](https://github.com/haskell/cabal/pull/3835)
  for an early attempt)
* Resolve issues related to and complete `cabal new-haddock`
* Fix high priority show-stopper bugs tagged `nix-local-builds` in the issue tracker

Additional nice-to-have stretch goals:
* Support for remote Git-repository dependencies
* Resolve cyclic dependencies in test/benchmark-suites
* Integrate `cabal outdated` with new-build's codepaths (see [cabal#4831](https://github.com/haskell/cabal/issues/4831)
* Implement `cabal new-doctest` counterpart to `cabal doctest`

**Potential Mentors**: Edward Z. Yang, Mikhail Glushenkov, Herbert Valerio Riedel

**Difficulty**: Intermediate to Advanced, depending on the chosen task(s).
