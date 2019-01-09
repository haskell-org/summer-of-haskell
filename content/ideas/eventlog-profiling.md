---
title: Extract heap profiles from the event log
---

The [event log](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/eventlog-formats.html#eventlog-encodings) is a general purpose mechanism for understanding what a
Haskell program is doing. It is a binary stream of low-level information logging
what the RTS is doing.

Ben Gamari [recently extended](https://ghc.haskell.org/trac/ghc/ticket/11094) the format so that heap profiling events are also
written to the log. This means that, in theory, all the information present in a
heap profile is now available for consumption in the event log.

However, tools such as `hp2pretty` still consume heap profiles. It would be
beneficial if they would instead consume the event log for at least two
reasons. Firstly it means that the specific
logic relating to making `.hp` files can be removed from the compiler. Secondly,
users can better correlate over events in their program with the program's memory
usage. This would [implement a feature](https://ghc.haskell.org/trac/ghc/ticket/3021) present in `nhc98` from over 20 years ago.

The goal of this project is to eliminate the this redundancy by making the event log
the primary way to produce heap profiles.

1. Understand the event log and heap profile format. Write a program to convert
    the event log to a heap profile.
2. Modify tools such as `hp2pretty` to directly consume an event log.
3. Modify the RTS so that turning on the heap profiler just means emitting the event log.
4. Add support for marking user events on a heap profile.

The project is a great way to get to grips with how to analyse Haskell programs
at a very low level. An area where there is much scope for innovation and
improvements.


**Potential Mentors**: Matthew Pickering, Ben Gamari

**Difficulty**: Intermediate

There is also much more scope for projects involving the profiler and event log
such as:

* https://ghc.haskell.org/trac/ghc/ticket/12582
* http://ncrashed.github.io/blog/
