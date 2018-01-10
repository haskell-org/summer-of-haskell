---
title: A Binary backend for Postgresql/Persistent
---

The [Persistent] library provides an abstract interface to a number of different
databases, including Postgresql. The Postgresql current backend for Persistent
uses the [postgresql-simple] library which uses UTF-8 strings to communicate
between the Haskell program and PostgresQL. Marshalling to and from strings
obviously has some performance implications.

It would therefore be nice to have an backend for Persistent that uses PostgresQL's
binary protocol. There are already two Haskell libraries that use this binary
protocol, [Hasql] and [postgresql-binary].

The aim of this project is to write a new PostgresQL backend for the Persistent
library that makes use of this binary protocol, possibly via one of the two
existing binary protocol libraries.

The project outline is something along the lines of:

1. Investigate all three libraries; Persistent, Hasql and postgresql-binary.
2. Decide how this new binary PostgresQL Persistent backend will operate.
3. Implement it.
4. Benchmark the new backend comparing it with the existing Persistent backend
   which uses postgresql-simple.


[Persistent]: https://hackage.haskell.org/package/persistent
[Hasql]: https://hackage.haskell.org/package/hasql
[postgresql-binary]: https://hackage.haskell.org/package/postgresql-binary
[postgresql-simple]: https://hackage.haskell.org/package/postgresql-simple

**Mentors**: Erik de Castro Lopo

**Difficulty**: Intermediate
