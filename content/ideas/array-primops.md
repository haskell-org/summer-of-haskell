---
title: Add primops to expand the (boxed) array API.
---

Arrays are the bedrock on which popular data structures like Vector are implemented.
However the API provided by GHC is quite limited. This project would expand the API
to fill some of these gaps.

All examples are given for `Array#` but apply to `SmallArray#` as well.

# Create boxed arrays from existing ones

**Motivation:** Creating (`Small`)`Array#`s efficiently in GHC Haskell stands in tension with the garbage collector as we must never encounter uninitialised slots during a collection. Thus, for safety, array creation primitives have to conservatively intialise array slots at the cost of performance.

Currently to make a new `Array#` `zs` out of existing `Array#`s `xs` and `ys`, we have to call the following operations (analogously for `SmallArray#`):

1. `let zs = newArray# ...`
2. `copyArray# xs ... zs ...`
3. `copyArray# ys ... zs ...`

**Proposed idea:** We propose to add a new array primitive that allows copying existing arrays into a new array while bypassing any unnecessary initialisation step.

1. `let zs = concatArray#s xs ys`

# Provide an API for modifying array sizes

**Motivation:** Creating a new array from an subset of the element inside an array currently requires us to first create a new array, and then copy
the elements over. 

**Proposed idea:** Provide `sliceArray#` and `growArray#` primops which combine the copy and initialization step.

These could be used for example in the implementation of `grow` from the *vector* package.

# Create boxed arrays from known elements.

**Motivation:** Currently creating an array of fully known contents consists of two steps.
Creating an array initializing it with default values and then filling in the actual contents.

**Proposed idea:** Provide Array literals which allow giving the size and contents of an array as a single construct. E.g. arrayFrom# (# a, b, c #)

This would allow us to completely eliminate the initialization with default values completely.

**Potential Mentors:**

- Andreas Klebinger
- Andrew Martin
- chessai


**Difficulty:** Advanced
