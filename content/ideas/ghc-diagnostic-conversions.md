---
title: Convert Unstructured Diagnostics in GHC
---

There are around 172 instances of GHC error messages that essentially exist in
plain string form instead of utilizing the new pattern for structured
diagnostics. The work of converting them is mostly low hanging fruit for
someone who wants to contribute to GHC in a way that will provide a tangible
benefit to the Haskell ecosystem. This benefit arises from the improved ability
of developer tooling, such as
[HLS](https://haskell-language-server.readthedocs.io/en/latest/), to work with
the errors emitted by GHC, as well as helping to flesh out the [The Haskell
Error Index](https://errors.haskell.org/) documentation initiative spearheaded
by the [Haskell Foundation](https://haskell.foundation/).

This project will consist of carving out a chunk of the un-converted error
messages and converting them to use the new structured diagnostics pattern.
Along the way, the contributor will gain experience with the development
process of a large and venerable open source codebase.

**Potential Mentors**: Aaron Allen

**Difficulty**: Medium

**Size**: between 50 and 150 hours
