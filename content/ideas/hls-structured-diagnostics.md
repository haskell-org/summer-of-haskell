---
title: Use GHCs Structured Diagnostics in HLS
---

Haskell Language Server provides many quick fixes and refactoring to
fix common errors and warnings reported by GHC. This is done in the
[`hls-refactor-plugin`](https://github.com/haskell/haskell-language-server/tree/
master/plugins/hls-refactor-plugin), but is implemented by manually parsing the
text of GHCs error/warning messages. However, since GHC 9.2, GHC provides a
much more structured representation of its error messages, which should allow a
much more robust implementation of these refactorings and avoid fragile regular
expression parsing of plain text messages.

**Task List**

* Adding infrastructure to `ghcide` and HLS to keep and associate structured error messages with
  the diagnostics we send to the editor so that it is possible to look up the associated
  structured error value for any diagnostic that the editor wants us to fix.
* Port the existing refactorings to use the diagnostic infrastructure instead of relying on
  parsing rendered error messages.
* Cataloging any existing refactorings that cannot be ported to use the new structured diagnostic
  infrastructure, and possibly making GHC MRs to remedy the situation.
* Implement more refactorings that are enabled by taking advantage of more suggestions in
  structured error messages.

References:

- <https://github.com/haskell/haskell-language-server/issues/2014>
- <https://gitlab.haskell.org/ghc/ghc/-/issues/18516>
- <https://github.com/ghc-proposals/ghc-proposals/pull/306>
- <https://gitlab.haskell.org/ghc/ghc/-/wikis/Errors-as-(structured)-values>

**Mentorship**

Zubin Duggal will mentor

**Difficulty:**  Medium

**Size**: 175 hours should be enough to implement the infrastructure required
and port most existing diagnostics. However, the work can easily expand to 350
hours to finish porting all diagnostics and making any necessary changes to GHC
itself.
