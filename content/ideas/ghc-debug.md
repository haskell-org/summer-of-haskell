---
title: ghc-debug
---

[ghc-debug] is a new heap profiling tool which can be used to answer precise
questions about the memory usage of Haskell programs. It works, and has already
been used to analyse problems in big codebases such as GHC. It would be great
if a capable student could help take it to the next level and inject some fresh
ideas into the project.

There are several possible avenues which could be explored:

* Applying ghc-debug to existing open source projects such as ghcide and developing
  reproducible tests to prevent memory problems being reintroduced.
* Implement an existing memory analysis from literature (such as [BLeak](https://jvilk.com/assets/pdf/bleak.pdf))
* Improve visualisations of existing analysis modes, for example, adding convenient
  functions to output large graphs in a suitable format for consumption by an
  external tool.
* Anything else you can think of! The best projects are your own ideas.

This is an advanced project because it requires an understanding of the runtime
representation of Haskell programs. Deep knowledge of the RTS is not necessary.

Anyone interested in this project should make sure to contact me before writing
their proposal. I would also expect a successful applicant to have completed at least one merge request
before a proposal is submitted.

* [YouTube Video](https://www.youtube.com/watch?v=9zuAsGk9xoM&t)
* [Example of analysing fragmentation](https://well-typed.com/blog/2021/01/fragmentation-deeper-look/)

**Mentors**: Matthew Pickering

**Difficulty**: Advanced

[ghc-debug]: https://gitlab.haskell.org/ghc/ghc-debug
