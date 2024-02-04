---
title: Parse error recovery and incrementality for GHC
---

GHC is able to report multiple type errors at once, yet a single parser
error brings the whole compilation pipeline to a halt; see [this tech
proposal](https://github.com/haskellfoundation/tech-proposals/pull/63).

One significant obstacle is the parser generator
[`happy`](https://github.com/simonmar/happy/) that GHC relies on for versatile
and fast parsing:
The current error handling architecture exposed by `happy` will abort on the
first parse error without producing a partial syntax tree at all.

This [draft PR](https://github.com/haskell/happy/pull/272)
improves happy to resume parsing after reporting a parse error, but it lacks
documentation, introduces a number of breaking changes and is in bad need of
cleanup.
Nevertheless, it is technically complete, passes the testsuite and has already
been [tried on GHC as a proof of concept](https://gitlab.haskell.org/ghc/ghc/-/merge_requests/11990).

The goal of this project is to take over the pull request to `happy` so that it
can be merged, and then use the improved `happy` to generate multiple and better
parse error messages in GHC.

There are a couple of stretch goals:

  * `happy` could further be improved to pass a closure of its
    parse state to reduction actions, so as to enable incremental parsing
    in GHC's parser.
  * Improve `happy` so that it provides a convenient and encapsulated way to
    introspect the LALR item stack, for example to identify bracketing
    productions such as `'(' expr . ')'` in GHC's parser in order to report mismatched brackets.
    There is a [hacky GHC Merge Request](https://gitlab.haskell.org/ghc/ghc/-/merge_requests/4711) 
    that tries to achieve as much without buy in from happy.
  * Improve `happy`s code base, which by now is over 25 years old.
    For example, recently `happy` has been modularised, thus split
    into multiple independently usable packages (for modelling grammars,
    building LALR tables, producing Haskell code from LALR tables, etc.),
    but unfortunately the individual packages
    [lack documentation and examples](https://github.com/haskell/happy/issues/238#issuecomment-1925804930).

**Potential Mentors**: 
Sebastian Graf

**Difficulty**: 
Medium, given that the technical bits have been drafted out.
Still, the student would be required to familiarise themselves with the basics
of LALR parsing theory in order to contribute documentation.

**Size**: 
175 hours for merging the PR and beginning to improve GHC, but 350 hours can
easily be spent on working on stretch goals as well for significant improvement
of GHC.
