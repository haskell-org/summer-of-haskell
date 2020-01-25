---
title: Lua interface to the http-client library
---

The HsLua library allows to embed an interpreter for the [Lua]
programming language into programs written in Haskell. One example is
[pandoc], which uses Lua as extension language allowing users to author
custom writers or to [modify](https://pandoc.org/lua-filters.html)
pandoc's internal document representation.

[HsLua] allows to expose Haskell functions to Lua scripts, thereby
enabling users to access functionality otherwise hidden in a program's
internals. Lua bindings to [http-client], a popular, easy to use, and
powerful Haskell HTTP library, are currently lacking. Such bindings
could give pandoc users great additional power without the need for
external C Lua libraries.

The candidate, who should be familiar with Haskell and Lua knowledge as
an optional bonus, could

  1) choose Haskell functions which would be most useful to Lua users;

  2) write bindings for these functions, as well as tests for those
     bindings;

  3) publish the bindings as a library on Hackage and Stackage.

If time permits, the new library could be included in pandoc.

**Mentors**: Albert Krewinkel

**Difficulty**: Intermediate to advanced.

[Lua]: https://www.lua.org/
[pandoc]: https://pandoc.org/
[HsLua]: https://hslua.github.io/
[http-client]: https://github.com/snoyberg/http-client
