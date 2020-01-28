---
title: Functional software architecture analysis
---
Software architecture is the fundamental structure of a software, its modules, functions, types, classes and all other software elements. It is very helpful for developers and architects to evaluate the fundamental structure of a software objectively, because it enables you to reason about maintainability, extensibility, reusability and so on.

Such architecture analysis tools usually consist of overall software metrics (e.g. maintainability, cyclic elements count, etc.), metrics per element (e.g. abstractness, incoming usage count, etc.), and graphs to visualize dependencies between elements on different abstraction levels.

The usage of such tools is quite common among medium and big sized applications. At least for applications developed in main languages like Java, C# and C/C++. Functional programming languages lack of static architecture analysis tools. Many of the well known metrics used in main languages can also be applied to functional languages. Further metrics need to be specified, which [already got some attention](https://pdfs.semanticscholar.org/01a5/89d90678bf828373ad2ca32aea50649f9122.pdf).

I think Haskell would be a good choice as implementation language, because static analysis closely relates to [compilers](https://github.com/Gabriel439/post-rfc/blob/master/sotu.md#compilers) and [parsers](https://github.com/Gabriel439/post-rfc/blob/master/sotu.md#parsing--pretty-printing), for which Haskell has very strong high quality libraries.

This project consists of
- defining a general metrics and analyzation interface
- an implementation of a few basic metrics for Haskell using the GHC API as parser


**Potential Mentors**: Mario Morgenthum

**Difficulty**: Intermediate
