---
title: Reimplementing `cabal check` as a syntax tree traversal
author: Andreas Abel
---

The `check` command of the `cabal` build tool has two purposes:

1. Raise errors if a package would be rejected by Hackage.
2. Give warnings if things looks suspicious or problematic
   (a kind of lint tool for `.cabal` files).

In some sense `cabal check` is comparable to a scope or type checker
in a programming language.  It should run over the whole syntax tree
of the parsed `.cabal` file and try to make sense of each part,
finding real and potential problems.  Typically scope/type checkers
consider each part of the syntax tree in its _context_, which contains
e.g. the variables in scope at the point, or some constraints that
hold there.

The current `cabal check` has grown historically and is not organized
like a scope/type checker.  Rather, it collects some data from the
syntax tree first (in a `fold`) and then checks this data.  There are
certain problems with this approach and/or its current implementation:

1. It does not deliver position information to give precise error
   locations to the user.

2. It does not evaluate data in its context always, like under which
   conditionals the data sits.  Thus, spurious or imprecise warnings
   might be generated.

3. When the cabal syntax is updated, the old checker might still
   compile, and the cabal developer is not alerted of the fact that
   they also need to update the checker.  A plain syntax-tree
   traversal would fail to compile if the grammar of the syntax-tree
   changes.

The goal of this project is to reimplement `cabal check` in the style
of a scope/type checker.  The new implementation should be faithful
with regard to the old implementation, so that it does not overlook
problems in `.cabal` files that the old implementation noticed.

The project may be structured into these phases/milestones:

1. Secure the features of the old implementation.
   This amounts to building a testsuite (resp. extend the existing
   one) for `cabal check` that captures the behavior of the current
   implementation.  This testsuite is already a viable result and
   shall be integrated in the `cabal` codebase.

2. Design the new check, the kind of context information it needs, etc.
   Write a design document and a first documentation.

3. Rough implementation of the new check.  Can be a stand-alone
   executable using the `Cabal-syntax` library at first.

4. Refined implementation, integrated into the `cabal` executable.
   Update testsuite and documentation to the final implementation.

Each of the milestones produces a valuable result that can be
considered a partial success of the internship.

**Potential mentor**: Andreas Abel

**Difficulty**: Intermediate.

**Required skills**:

- Good familiarity with `cabal` from a user's perspective.
- Good familiarity with abstract syntax trees.
- Good familiarity with monadic programming.
