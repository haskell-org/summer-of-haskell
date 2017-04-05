---
title: Improve GHC Performance test suite
---

The GHC testsuite's performance tests tends to be a constant source of busy-work
as it requires that contributors manually bump performance numbers and propagate
these changes across platforms. Moreover, the testsuite is poor at noticing
performance regressions due to false positive failures (due to spurious
environmental differences) and false negatives (due to the rather generous
acceptance windows that many tests have).

We would like to replace the mechanisms for tracking performance metrics in the
GHC testsuite and nofib with a scheme more amenable to automation. This project
will involve working with GHC developers to develop such a scheme and
implementing tooling for the automation generation, tracking, and visualization
of the resulting data.

For more info see <https://ghc.haskell.org/trac/ghc/ticket/12758>.

**Mentor:**: Ben Gamari
