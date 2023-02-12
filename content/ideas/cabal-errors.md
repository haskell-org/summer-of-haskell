---
title: Structured errors and error codes for cabal-install
---

The https://errors.haskell.org/ site provides an index that maps error codes in haskell tooling to documentation. 
GHC, ghcup, and stack have all begin to implement support for structured errors that have assigned codes. This project is
to refactor the cabal codebase to also provide structured errors rather than mere strings, and also assign cabal errors corresponding
codes that can be added to the error index.

While GHC errors are significantly more complicated than cabal errors, the discussion of structured ghc errors at the following urls may be useful inspiration:

* https://github.com/goldfirere/tech-proposals/blob/error-messages-2/proposals/000-error-messages.md
* https://gitlab.haskell.org/ghc/ghc/-/wikis/Errors-as-(structured)-values
* https://well-typed.com/blog/2021/08/the-new-ghc-diagnostic-infrastructure/

Corresponding cabal tickets:

* https://github.com/haskell/cabal/issues/8543
* https://github.com/haskell/cabal/issues/8618

**Potential Mentors**: Gershom Bazerman

**Difficulty**: Medium

**Size**: 350 hours
