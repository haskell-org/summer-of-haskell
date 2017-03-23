---
title: Improve the Shake-Based Hadrian Build System for GHC
---

Advance the Hadrian build system to the point that it can replace the existing
GHC build system in practice, including specifically adding support for cross
compilation, source and binary distribution generation, dynamic way, and test
suite support. Most of these issues are detailed in the "Current Limitations"
section of the
[README.md](https://github.com/snowleopard/hadrian/blob/master/README.md)

This project may well entail working further on the Shake tool itself to
increase its featureset as a prerequisite for use of these features in hadrian.

**Mentors**: Hadrian team
