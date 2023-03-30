---
title: 'HMock for effect systems'
---

Mocks are a widely used technique for testing effectful code by specifying the expected interactions with other systems using a flexible language of expectations.  [HMock](https://hackage.haskell.org/package/HMock) is a tool for testing Haskell programs using mocks.  It currently requires programs to be written using MTL-style type classes that define the operations you with to mock.

There is a lot of interest in the Haskell community in effect systems, which are frameworks for declaring and managing the specific effects of code.  Effect systems like polysemy, fused-effects, freer-simple, and eff provide an alternative to MTL-style type classes that has some advantages with regard to performance, composability, and flexibility.  It would be nice if HMock worked with these effect systems, in addition to MTL-style type classes.  The hope would be to reuse as much of the existing API as possible, making minimal changes to accomodate the fundamental differences.  This ensures that Haskellers familiar with HMock in one context can easy apply their knowledge even if their effect system changes.

HMock makes significant use of Template Haskell, Data Kinds, Type Families, GADTs, and more, so this isn't the right project for a Haskell beginner.  If beating GHC into submission is more your style, look here!

**Mentor**: [Chris Smith](mailto:cdsmith@gmail.com)

**Difficulty**: Advanced

**Size**: 175 hours
