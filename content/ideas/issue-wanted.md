---
title: "issue-wanted: Web app for discovering potential contributions to the Haskell ecosystem"
---

Haskell ecosystem can be improved in many ways. There are many libraries of
different categories with tons of issues — starting with low-hanging fruits to
expert level problems. However, there is no easy way to discover potential
problems you would like to work on. The goal of
[issue-wanted](https://github.com/kowainik/issue-wanted) is to help find project
issues using GitHub labels and various metadata fields from `.cabal` files
(like `category`).

The project contains several parts:

1. Haskell process that syncs information about Haskell repositories at GitHub.
2. Haskell backend that provides REST API for fetched information.
3. Elm frontend that displays this information.

The benefits of this project are the following:

1. With `issue-wanted` it's more accessible for beginners to find interesting
   issues they can solve.
2. Average maintenance of Haskell libraries will be improved: if project owners
   want more open-source contributors, they could provide better meta
   information to their packages, and this actually pays off. As a consequence,
   such projects can become more popular and gather more attention.

This project is an excellent way for students to work on the real-world Haskell project
using modern libraries and approaches.

**What is expected from student**

1. Basic knowledge of Haskell programming language concepts: `newtype`,
   typeclasses, `Monad`s, ability to write code with `Reader` or `State` monad.
2. Very basic knowledge of SQL. At least student should not be afraid to learn
   and use SQL, though it's not expected to have any complex queries in the
   implementation.
3. Patience. Reading GitHub API documentation and testing integration of
   multiple systems might be frustrating sometimes.

**What student can get from this project**

1. Experience of writing REST API web services in Haskell.
2. Familiarity with intermediate Haskell features like monad transformers and
   type-level computations.
3. Knowledge of modern Haskell programming patterns and idioms.

**Potential Mentors**: Dmitrii Kovanikov, Veronika Romashkina

**Difficulty**: Beginner/Intermediate

Mentors can take care of Elm frontend and deployment. But students are not
restricted to work with Haskell only. If they have any interest in other parts
of the project, they can experiment with those parts without any limitations.

Suggested libraries for the project:

* `servant` for writing REST API servers and clients in Haskell
* PostgreSQL as database using `postgresql-simple` Haskell library
* JSON as a communication format between backend and frontend, `aeson` Haskell library
* `async` for writing concurrent code
