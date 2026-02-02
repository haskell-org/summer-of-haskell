---
title: Revive the support for type-class elaboration in Liquid Haskell
---

## Goals

Update the implementation of [Liquid Haskell][] to reenable support for [type-class elaboration][].

[Liquid Haskell]: https://ucsd-progsys.github.io/liquidhaskell/
[type classes]: https://ucsd-progsys.github.io/liquidhaskell/specifications/#modules-with-code-type-classes

## Background

Liquid Haskell is a verification tool for Haskell programs. The programmer
writes specifications for these programs, and Liquid Haskell checks if the
programs actually meet the specifications.

Liquid Haskell analyzes the Core language of the GHC compiler, which allows
it to work with many syntactic features of Haskell that are eliminated during desugaring.
One exception to this is type classes, which require Liquid Haskell to
associate type class and instance definitions with dictionaries as they
materialize in Core.

There are tests in the testsuite which rehearse type-class support, but
some of them [have been disabled][] after upgrades to GHC introduced
incompatibilities with the Liquid Haskell implementation. Specifically, the
tests in question are related to type-class elaboration.

[have been disabled]: https://github.com/ucsd-progsys/liquidhaskell/blob/92c0a7eeb93045ace8a83df311c51287dee056fc/tests/tests.cabal#L2601-L2608

This project is about surveying the support of Liquid Haskell for reasoning
with type classes, updating the implementation to make it work with the latest
GHC version, improving the documentation, and grooming the testsuite to
reenable and complete the failing tests. This is the [corresponding issue][]
in the Liquid Haskell repository.

[corresponding issue]: https://github.com/ucsd-progsys/liquidhaskell/issues/2450


## Outcomes

The main outcomes are a pull request with the implementation, tests,
documentation, and the reports on the insights discovered during the project
in the corresponding issue of the repository.

A secondary outcome is a blogpost describing the experience and the results of
the project.

## Size & Difficulty

Project size should be near 175 hours. The project will require a fair amount of
reading of existing Haskell code, and the GHC interfaces it uses. Familiarity
with the verification mechanisms is not necessary a priori, though some
user-level understanding of Liquid Haskell is going to be needed to write tests.

Difficulty: intermediate

## Required Skills

* Read and write technical English
* Haskell programming basics

## Project Mentor

* Facundo Domínguez (facundo.dominguez at tweag.io) comaintainer of Liquid Haskell
