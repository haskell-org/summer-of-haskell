---
title: Djinn with in-scope terms for Intero
---

The basic idea is that Intero would feed type information of the current set of
modules into [Djinn]’s API and then you can write `:djinn` and get a program for
it. Djinn would need to be extended with support for list literals like `[a]`,
but otherwise it could be a very fancy way to have code completion. Then Emacs
and Intero could provide code completion based on this e.g. `map _ [1,2,3]` in a
`String`-typed position would yield a suggestion like `show`.

Some work on this has already happened on the `djinn` branch:

<https://github.com/commercialhaskell/intero/compare/djinn?expand=1#diff-a469118375854c9ae9408cbd3bb03b39R1732>

[Djinn]: https://hackage.haskell.org/package/djinn

**Mentors**: Chris Done
