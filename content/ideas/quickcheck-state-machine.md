---
title: Property-based testing stateful programs using QuickCheck
---

When the first version of
[`QuickCheck`](https://hackage.haskell.org/package/QuickCheck) was released for
Haskell it was the state-of-the-art in testing. Today however it's lagging
behind, for example, Erlang's [`PropEr`](https://github.com/manopapad/proper)
and [`eqc`](http://quviq.com/documentation/eqc/) libraries. The
[`quickcheck-state-machine`](https://github.com/advancedtelematic/quickcheck-state-machine)
library is an attempt to add state machine modelling to Haskell's QuickCheck for
testing stateful/monadic code, and thereby catch up with the Erlang versions of
QuickCheck.

This proposal is about using, and possibly extending, `quickcheck-state-machine`
in order to improve the quality of Haskell code in general and for a specific
project in particular.

The intermediate candidate could:

  1) Find an interesting Haskell library or application to test;

  2) Write a state machine model, for said library or application, together with
     at least a sequential property, and possibly a parallel property as well;

Getting this far would already reach the goal, but if there's enough time the
candidate could in addition to the above also:

  3) Add [fault injection](https://en.wikipedia.org/wiki/Fault_injection) to the
     model, and thereby test the robustness of the code;

The advanced candidate could additionally try to one of the following items:

  4) Combine fault injection with parallel testing and thereby achieve
     [Jepsen](https://github.com/jepsen-io/jepsen)-like
     [tests](https://jepsen.io/analyses);

  5) Use the gained experience and try to improve the `quickcheck-state-machine`
     library itself.


**Mentors**: Stevan Andjelkovic and Robert Danitz

**Difficulty**: Intermediate to advanced
