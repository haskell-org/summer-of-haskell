---
title: 'Accepted projects for 2018'
author: 'Jasper Van der Jeugt'
---

Hey all,

We are happy to announce the 17 projects that have been accepted to participate
in Google Summer of Code 2018 for the Haskell.org project.

We would like to thank Google for organizing the program, all students who
applied for the quality proposals of course the mentors for volunteering to
guide the projects!

Without further ado, here are the accepted projects:

-   [Visual Tools and Bindings for Debugging in Code World](#visual-tools-and-bindings-for-debugging-in-code-world)
-   [Help Hadrian](#help-hadrian)
-   [Add support for deprecating exports](#add-support-for-deprecating-exports)
-   [Hi Haddock](#hi-haddock)
-   [Improving the GHC code generator](#improving-the-ghc-code-generator)
-   [Crucible: A Library for In-Memory Data Analysis in Haskell](#crucible-a-library-for-in-memory-data-analysis-in-haskell)
-   [Dependently Typed Core Replacement in GHC](#dependently-typed-core-replacement-in-ghc)
-   [Benchmarking graph libraries and optimising algebraic graphs](#benchmarking-graph-libraries-and-optimising-algebraic-graphs)
-   [Improvements to GHC's compilation for conditional constructs.](#improvements-to-ghcs-compilation-for-conditional-constructs.)
-   [Support for Multiple Public Libraries in a .cabal package](#support-for-multiple-public-libraries-in-a-.cabal-package)
-   [Functional test framework for the Haskell IDE Engine and Language Server Protocol Library](#functional-test-framework-for-the-haskell-ide-engine-and-language-server-protocol-library)
-   [Native-Metaprogramming Reloaded](#native-metaprogramming-reloaded)
-   [Format-Preserving YAML](#format-preserving-yaml)
-   [Enhancing the Haskell Image Processing Library with State of the Art Algorithms](#enhancing-the-haskell-image-processing-library-with-state-of-the-art-algorithms)
-   [Making GHC Tooling friendly](#making-ghc-tooling-friendly)
-   [Helping cabal new-build become just cabal build](#helping-cabal-new-build-become-just-cabal-build)
-   [Parallel Automatic Differentiation](#parallel-automatic-differentiation)

# Visual Tools and Bindings for Debugging in Code World

Student: Krystal Maughan  
Mentors: Chris Smith, Gabriel Gonzalez

Visual Debugging tools that will allow various ages to interact with and learn
visually while tracing their bugs in Haskell.

# Help Hadrian

Student: Chitrak Raj Gupta  
Mentors: Andrey Mokhov, Moritz Angermann

Current build systems such as `make` have a very complex structure and are
difficult to understand or modify. Hadrian uses functional programming to
implement abstractions to make codebase much more comprehensible. Build Rules
are defined using Shake Library, and the results produced are much faster and
scalable than current make based system. But the in-use implementation of
Hadrian is still in development phase and not completely ready to be deployed. I
believe that Hadrian will serve a huge assistance in increasing the productivity
of Haskell developers. Therefore, the aim of my project will be to push Hadrian
a few steps closer to deployment, so that the Haskell community can code with a
bit more efficiency.

A recent Pull Request by Alp Mestanogullary has implemented a basic rule for
binary distribution. Also, I have been able to figure out multiple sources of
errors causing validation failures, and my Pull Request has brought the number
of failures down significantly.

Hence, the major goals of my project will be to:

1. Achieve ghc-quake milestone that is listed in Hadrian.
2. Implement missing features in Hadrian.
3. Build a more comprehensive documentation of Hadrian.

# Add support for deprecating exports

Student: alanas  
Mentors: Matthew Pickering, Erik de Castro Lopo

Add support of deprecation pragmas within module exports.  This would ease the
transition between different versions of the software by warning the developers
that the functions/types/classes/constructors/modules that they are using are
deprecated.

# Hi Haddock

Student: Simon Jakobi  
Mentors: Herbert Valerio Riedel, Alex Biehl

A long-standing issue with Haskell’s documentation tool Haddock is that it needs
to effectively re-perform a large part of the parse/template-haskell/typecheck
compilation pipeline in order to extract the necessary information from Haskell
source for generating rendered Haddock documentation. This makes Haddock
generation a costly operation, and makes for a poor developer experience.

An equally long-standing suggestion to address this issue is to have GHC include
enough information in the generated `.hi` interface files in order to avoid
Haddock having to duplicate that work. This would pave the way for following
use-cases and/or have the following benefits:

1. Significantly speed up Haddock generation by avoiding redundant work.
2. On-the-fly/lazy after-the-fact Haddock generation in cabal new-haddock and
   stack haddock for already built/installed Cabal library packages.
3. Add native support for a :doc command in GHCi’s REPL and editor tooling
   (ghc-mod/HIE) similar to the one available in other languages (c.f. the Idris
   REPL or the Python REPL)
4. Allow downstream tooling like Hoogle or Hayoo! to index documentation right
   from interface files.
5. Simplify Haddock’s code base.

# Improving the GHC code generator

Student: Abhiroop Sarkar  
Mentors: Carter Schonwald, Ben Gamari

This project attempts to improve the native code generator of GHC by adding
support for Intel AVX and SSE SIMD instructions. This support would enable GHC
to expose a bunch of vector primitive operations, which can be utilized to by
various high performance and scientific computing libraries of the Haskell
ecosystem to parallelize their code for free.

# Crucible: A Library for In-Memory Data Analysis in Haskell

Student: Gagan  
Mentors: Marco Zocca, Andika D. Riyandi

_Note: this project was slightly adjusted from its proposed form after some
discussion with the mentors and it will have a stronger focus on improving
existing libraries._

A typical workflow in interactive data analysis consists of :

- Loading data (e.g. a CSV on disk)
- Transforming the data
- Various data processing stages
- Storing the result in some form (e.g. in a database).

The goal of this project is to provide a unified and idiomatic Haskell way of
carrying out these tasks. Informally, you can think of “dplyr”/“tidyr” from the
R ecosystem, but type safe. This project aims to provide a library with the
following features:

- An efficient data structure for possibly larger-than-memory tabular data. The
  Frames library is notable prior work, and this project may build on top of it
  (namely, by extending its functionality for generating types from stored
  data).
- A set of functions to “tidy”/clean the data to bring it to a form fit for
  further analysis, e.g. splitting one column to multiple columns (“spread”) or
  vice versa (“gather”).
- A DSL for performing a representative set of relational operations e.g.
  filtering/aggregation.

# Dependently Typed Core Replacement in GHC

Student: Ningning Xie  
Mentors: Richard Eisenberg

In recent years, several works (Weirich et al., 2017; Eisenberg, 2016; Gundry,
2013) have proposed to integrate dependent types into Haskell. However,
compatibility with existing GHC features makes adding full-fledged dependent
types into GHC very difficult. Fortunately, GHC has many phases underneath so it
is possible to change one intermediate language without affecting the user
experience, as steps towards dependent Haskell. The goal of this proposal is the
replacement of GHC’s core language with a dependently-typed variant.

# Benchmarking graph libraries and optimising algebraic graphs

Student: Alexandre Moine  
Mentors: Andrey Mokhov, Alois Cochard

A graph represents a key structure in computer science and they are known to be
difficult to work with in functional programming languages. Several libraries
are being implemented to create and process graphs in Haskell, each of them
using different graph representation: Data.Graph from containers, fgl,
hash-graph and alga. Due to their differences and the lack of a common
benchmark, it is not easy for a new user to select the one that will best fit
their project. The new approach of alga seems particularly interesting since the
way it deals with graphs is based on tangible mathematical results. Still, it is
not very user friendly and it lacks some important features like widely-used
algorithms or edge labels.

Therefore, I propose to develop a benchmarking suite that will establish a
reference benchmark for these libraries, as well as to enhance alga’s
capabilities.

# Improvements to GHC's compilation for conditional constructs.

Student: Andreas Klebinger  
Mentors: José Calderón, Joachim Breitner, Ben Gamari

While GHC is state of the art in many respects compilation of conditional
constructs has fallen behind projects like Clang/GCC.

I intend to rectify this by working on the following tasks:

- Implement cmov support for Cmm
- Use cmov to improve simple branching code
- Use lookup tables over jump tables for value selection when useful.
- Enable expression of three way branching on values in Cmm code.
- Improve placement of stack adjustments and checks.

# Support for Multiple Public Libraries in a .cabal package

Student: Francesco Gazzetta (@fgaz)  
Mentors: Mikhail Glushenkov, Edward Yang

Large scale haskell projects tend to have a problem with lockstep distribution
of packages (especially backpack projects, being extremely granular). The unit
of distribution (package) coincides with the buildable unit of code (library),
and consequently each library of such an ecosystem (ex. amazonka) requires
duplicate package metadata (and tests, benchmarks...).

This project aims to separate these two units by introducing multiple libraries
in a single cabal package.

This proposal is based on [this
issue](https://github.com/haskell/cabal/issues/4206) by ezyang.

# Functional test framework for the Haskell IDE Engine and Language Server Protocol Library

Student: Luke Lau  
Mentors: Alan Zimmerman

The Haskell IDE Engine is a Haskell backend for IDEs, which utilises the
Language Server Protocol to communicate between clients and servers.

This projects aims to create a test framework that can describe a scenario
between an LSP client and server from start to finish, so that functional tests
may be written for the IDE engine. If time permits, this may be expanded to be
language agnostic or provide a set of compliance tests against the LSP
specification.

# Native-Metaprogramming Reloaded

Student: Shayan Najd  
Mentors: Ben Gamari, Alan Zimmerman

The goal is to continue on an ongoing work, utilising the Trees that Grow
technique, to introduce native-metaprogramming in GHC. Native-metaprogramming is
a form of metaprogramming where a metalanguage's own infrastructure is directly
employed to generate and manipulate object programs. It begins by creating a
single abstract syntax tree (AST) which can serve a purpose similar to what is
currently served by Template Haskell (TH), and the front-end AST inside GHC
(HsSyn). Meta-programs could then leverage, much more directly, the machinery
implemented in GHC to process Haskell programs. This work can also possibly
integrate with Alan Zimmerman’s work on compiler annotations in GHC, and enable
a better IDE support.

# Format-Preserving YAML

Student: Wisnu Adi Nurcahyo  
Mentors: Tom Sydney Kerckhove, Jasper Van der Jeugt

Sometime Stack (The Haskell Tool Stack) ask us to add an extra dependency
manually. Suppose that we use the latest Hakyll that needs a
`pandoc-citeproc-0.13` which is missing in the latest stable Stack LTS. Stack
asks us to add the extra dependency to solve this problem.  Wouldn't it be nice
if Stack could add the extra dependency by itself?

# Enhancing the Haskell Image Processing Library with State of the Art Algorithms

Student: khilanravani  
Mentors: Alp Mestanogullari

The project proposed here aims to implement different classes of Image
processing algorithms using Haskell and incorporate the same to the existing
code base of Haskell Image Processing (HIP) package. The algorithms that I plan
to incorporate in the HIP package have vast applications in actual problems in
image processing. Including these algorithms to the existing code base would
help more and more users to really use Haskell while working on some computer
vision problems and this would make Haskell (kind of) ahead in the race of with
functional programming languages such as Elm or Clojure (since their image
processing libraries are pretty naive). In this way, this project can
substantially benefit the Haskell organization as well as the open source
community. Some of the algorithms proposed here include the famous Canny edge
detection, Floyd - Steinberg (Dithering) along with other popular tools used in
computer vision problems.

# Making GHC Tooling friendly

Student: Zubin Duggal  
Mentors: Ben Gamari, Gershom Bazerman, Joachim Breitner

GHC builds up a wealth of information about Haskell source as it compiles it,
but throws all of it away when it's done. Any external tools that need to work
with Haskell source need to parse, typecheck and rename files all over again.
This means Haskell tooling is slow and has to rely on hacks to extract
information from GHC. Allowing GHC to dump this information to disk would
simplify and speed up tooling significantly, leading to a much richer and
productive Haskell developer experience.

# Helping cabal new-build become just cabal build

Student: typedrat  
Mentors: Herbert Valerio Riedel Mikhail Glushenkov

While much of the functionality required to use the `new-*` commands has already
been implemented, there are not-insignificant parts of the design that was
created last year that remain unrealized.

By completing more of this design, I plan to help the `new-` prefix go away and
to allow this safer, cleaner system to replace old-style cabal usage fully by
rounding off the unfinished edges of the current proposal.

# Parallel Automatic Differentiation

Student: Andrew Knapp  
Mentors: Trevor L. McDonell, Edward Kmett, Alois Cochard

Automatic Differentation (AD) is a technique for computing derivatives of
numerical functions that does not use symbolic differentiation or
finite-difference approximation. AD is used in a wide variety of fields, such as
machine learning, optimization, quantitative finance, and physics, and the
productivity boost generated by parallel AD has played a large role in recent
advances in deep learning.

The goal of this project is to implement parallel AD in Haskell using the
`accelerate` library. If successful, the project will provide an asymptotic
speedup over current implementations for many functions of practical interest,
stress-test a key foundation of the Haskell numerical infrastructure, and
provide a greatly improved key piece of infrastructure for three of the
remaining areas where Haskell's ecosystem is immature.
