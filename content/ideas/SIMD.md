---
title: Finishing SIMD support for GHCs native backend
---

**Motivation:** SIMD is highly valued for fast processing of large datasets. GHC currently supports SIMD only
when using the llvm backend.

There is an [unfinished patch](https://gitlab.haskell.org/ghc/ghc/-/merge_requests/1306) adding SIMD support to GHCs
native backend. However the patch currently breaks because the register allocator does not support vector variables properly.

This project would consist of fixing the register allocator which should be the last big hurdle for SIMD support. And then
making sure SIMD makes it over the finishing line.

**Potential Mentors:**

- Andreas Klebinger

**Difficulty:** Hard