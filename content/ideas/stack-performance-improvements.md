---
title: Stack performance improvements
---

[The Stack build tool](https://github.com/commercialhaskell/stack/) has been in development for some years now. While efforts are usually taken to improve performance where possible, it has been some years since we've had a dedicated focus on improving performance across the board. Recent refactorings as part of the Stack 2.0 effort have either introduced some slowdowns that can be corrected, or opened opportunities for performance speedups.

In addition to finding and addressing performance sensitive areas themselves, the Stack team has begun collecting such issues into a [Github project board on performance improvements](https://github.com/commercialhaskell/stack/projects/3). The goal would be to:

* introduce some concrete performance benchmarks to measure performance
* address as many of these individual topics as possible
* provide updates to the community on the performance improvements achieved

**Potential Mentors**: Michael Snoyman, Niklas Hambüchen **FIXME others?**

**Difficulty**: Intermediate
