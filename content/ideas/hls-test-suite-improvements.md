---
title: Haskell Language Server Test Suite Improvements
---

Haskell Language Server (HLS) has an extensive test suite that is run on every commit.
Over time, the test suite has degraded in performance, reliability and consistency.
This has become a bottleneck in the development of HLS, as a slow and unreliable test suite deters new contributors and makes life more difficult for maintainers.

This project aims to improve the quality of the test suite by:

* Reducing the overall test suite execution time
* Fixing flaky test cases
* Removing artificial wait times in test cases
* Unifying the style of tests in HLS

The issue [#3736](https://github.com/haskell/haskell-language-server/issues/3736) provides some ideas on how to improve the test suite further.

To achieve the aforementioned goals, some of the following intermediate steps could be helpful:

* Unifying testing infrastructure of ghcide and plugins
* Enabling parallelism of test case execution
* Exploiting custom LSP messages to reduce flakiness of tests written in lsp-test

**Mentorship**

Fendor

**Difficulty and size**

The project itself is not too difficult, as there is lots of prior work and many low hanging fruits.
However, there is a fair amount of working with the internals of Haskell Language Server which can be intimidating as they tend to be underdocumented.

The size of this project ranges from 175 hours up to 350 hours, depending on the exact scope of the proposal.
