---
title: Add primops to construct (boxed) arrays from existing ones
---

**Motivation:** Creating (`Small`)`Array#`s efficiently in GHC Haskell stands in tension with the garbage collector as we must never encounter uninitialised slots during a collection. Thus, for safety, array creation primitives have to conservatively intialise array slots at the cost of performance.

Currently to make a new `Array#` `zs` out of existing `Array#`s `xs` and `ys`, we have to call the following operations (analogously for `SmallArray#`):

1. `let zs = newArray# ...`
2. `copyArray# xs ... zs ...`
3. `copyArray# ys ... zs ...`

We propose to add a new variadic array primitive that allows copying existing arrays into a new array while bypassing any unnecessary initialisation step.

1. `let zs = concatArray#s [xs, ys] ...`

*TODO:* At this point it would be nice to have abstract and concrete examples of code which we expect to benefit from this. Also we should quantify the expected range.

**Implemenation Sketch:** *TODO*

**Potential Mentors:**

- Andrew Martin
- Andreas Klebinger
- chessai


**Difficulty:** Advanced
