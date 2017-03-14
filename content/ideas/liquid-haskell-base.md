---
title: Verify base using Liquid Haskell to ensure totality of functions
---

The base contains many partial functions that are poorly documented. Liquid
Haskell can be used to verify that all functions are total (by restricting the
domain of the functions input with refinement types).

Though Liquid Haksell comes with
[some speficiations for base](https://github.com/ucsd-progsys/liquidhaskell/tree/develop/include),
these specifications:

- are not checked against the base implementations and
- are not part of the base libraries.

Inspired by <https://github.com/aelve/haskell-issues/issues/52>

**Mentors**: Niki Vazou
