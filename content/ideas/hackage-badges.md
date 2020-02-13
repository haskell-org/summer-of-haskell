---
title: Build-integration and Badges for Hackage
---

People commonly add ["shields"](https://github.com/badges/shields) (or "badges")
to their project landing pages to signal how well their project is maintained.
Hackage even supports such shields so that Haskell project maintainers can
keep their project's status page up-to-date with their latest package upload.

However, the amount of information that Hackage makes available this way is very
limited: currently Hackage only reports whether or not documentation was built
successfully and that's about it.

Imagine if a package author could proudly display the latest GHC version that
they successfully build against!  Imagine if you, a package user, could quickly
discern a well-maintained package when they report 100% documentation coverage.

Hackage could potentially report this information, and more!  Hackage is
perfectly positioned to monitor test suites, benchmarks, code coverage, and any
other measure of package quality.  All that's missing is for you to make this
information available.

This project is ideal even for Haskell programmers of all experience levels
with an interest in gaining experience in server-side web development.  The
project difficulty can adapt to the student's proficiency from beginner (make a
few API changes to expose more information) to intermediate (add new quality
checks to Hackage) to experienced (make architectural changes to parallelize
Hackage builds).  You can also exercise front-end programming skills if you are
interested in full-stack work by extending the Hackage user interface to report
new information collected in this way.

This project gives you the opportunity to contribute to make highly recognizable
changes to core Haskell infrastructure in ways that benefit the entire
community.

**Potential Mentors**: Gershom Bazerman, Herbert Valerio Riedel

**Difficulty**: Beginner
