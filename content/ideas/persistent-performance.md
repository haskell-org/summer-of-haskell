---
title: Improving performance of persistent libraries
---

Persistent provides an unified interface for different database
storages. Haskell's database bindings aren't yet that strong with
respect to performance. Recent benchmarking on persistent has
proven the same[1]. The aim here would be to specifically improve
the performance for Sqlite, Postgres and Mysql backends. Although
any improvements to the persistent library will be shared by other
backends also.

Relevant links:

* [1] https://github.com/psibi/persistent/tree/sqlite-benchmark
* [2] https://sqlite.org/speed.html
* [3] https://www.yesodweb.com/book/persistent
* [4] https://github.com/yesodweb/persistent

Mentors: Michael Snoyman
