---
title: Build a transactional embedded key-value store
---

The zoo of NoSQL systems is large, confusing and ever changing. The majority of
systems is geared towards big deployments and are thus often
networked/distributed. This of course requires an additional deployment and
configuration step. Furthermore, only very few provide fully ACID-compliant
transactions which puts additional burden on an application developer who wants
strong guarantees.

In this project a new embedded, transactional and fully ACID-compliant key value
store is developed in Haskell that can be used by applications directly or serve
as a backend for a bigger system.

The proposed (but not strictly fixed) general approach is to copy the core
design of the Lightning Memory-Mapped Database (LMDB) and/or RavenDB's Voron
engine which both follow the same design based on copy-on-write B+-trees. This
is a comparably simple reader performance oriented design which should allow a
student to implement several functioning (yet unoptimized) deliverables during a
summer. For more information see: [LMDB's homepage], [LMDB design paper],
[RavenDB's homepage], [Voron source code].

**Mentors**: Steven Keuchel

[LMDB's homepage]: https://symas.com/offerings/lightning-memory-mapped-database/
[LMDB design paper]: https://www.openldap.org/pub/hyc/mdm-paper.pdf
[RavenDB's homepage]: https://ravendb.net/
[Voron source code]: https://github.com/ravendb/ravendb/tree/v4.0/src/Voron
