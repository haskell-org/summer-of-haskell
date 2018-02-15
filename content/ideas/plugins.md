---
title: Haskell Program Analysis using GHC Source Plugins
---

Performing any kind of static analysis on Haskell programs has traditionally
been very difficult. The main problem has been that in order to load a Haskell
module, you need to know a lot of additional information such as where dependencies
exist, which preprocessors to run and so on.  Syntactic analysis is somewhat possible
but semantic analysis has been out of reach.

In recent work, @nboldi extended the plugin interface to allow users to modify
and inspect the compiler's AST as the program is compiled. This has the advantage that
it can be integrated easily into any existing build system and the desired information
is computed as the program is compiled.

The plugin architecture is very powerful but this project will focusing on using
the API in order to **extract** information rather than modify source program.

Some potential avenues of analyses include:

1. Refactor [`SourceGraph`](https://github.com/ivan-m/SourceGraph)
2. Refactor [`haskell-indexer`](https://github.com/google/haskell-indexer)
3. A plugin which analyses a project with hs-boot files and identifies
    ways to reduce the size and number of them.
4. A plugin which computes minimal exports
5. A plugin which computes unused functions in an application across modules.
6. A plugin which computes statistics about source code, for example which counts
    how many times certain language features are used.
7. Analysis of core programs using the existing core2core plugins. For example,
    looking at the calculated sizes of expressions to help visualise core output.
8. Integrate using plugins with `nix` so that it is easy for use to specify they
    want to run plugins in a declarative manner.

A side-effect of this project will be a refinement of the plugins API and
documentation about how other users can use plugins effectively.

A succesful proposal will identify one potential application of a plugin and explain
why using a plugin will be beneficial for that application. It would be useful to
also consider the challenges of alternative approaches such as using the GHC API.

A succesful project will implement at least one of these analysis ideas and document
the process in order to advertise the plugin architecture to other users.

https://phabricator.haskell.org/D4342
https://github.com/mpickering/core-kythe
https://github.com/google/haskell-indexer



**Mentors**: Boldizsár Németh, Oliver Charles

**Difficulty**: Intermediate
