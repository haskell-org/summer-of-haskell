---
title: 'Midterm update for 2017'
author: 'Niki Vazou & Jasper Van der Jeugt'
---

Hey all,

We'd like to update the wider Haskell community on the state of the Summer of
Haskell projects, now that the midterm evaluation has passed.  We are very happy
that almost everyone passed the evaluation.

Although several of the students maintain blogs on their own (which we
definitely encourage), we also made an attempt to compile the information here.

1.  Safe streaming with linear types  
    Student: Edvard Hübinette  
    Mentor: Arnaud Spiwack  
    Blog: <https://m0ar.github.io/safe-streaming/>

    The majority of the streaming library internals and prelude is converted for
    leveraging linear types and uses a linear monad class to ensure that old
    stream states cannot be accessed again, effectively eliminating the issue
    with arbitrarily weird behaviour arising from duplicated effects.

    The student has also found some very tricky usability issues that arise from
    forcing linear consumption, which will be documented in an upcoming blog
    post.

    Other than that the student is working on implementing linear versions of
    other monads like State, and trying to figure out how to instance LMonad IO,
    which seems somewhat tricky.

2.  Bringing Sanity to the GHC Performance Test-Suite  
    Student: Jared Weakly  
    Mentor: Ben Gamari  
    Blog: <https://jaredweakly.com/blog/category/blog/>

    The creation of the tooling, writing the functionality, and all of the
    necessary supporting elements of the project are seemingly done.

    What remains at this point is to start actually wiring things together in a
    mock-up and then finally in production.  Along the way, any missing
    functionality will be added, helping tools to streamline things will also be
    added, and so on.

3.  Haskell IDE Engine  
    Student: Zubin Duggal  
    Mentor: Alan Zimmerman

    HIE with the vscode plugin is now in a useable
    state and implements a large portion of the [Language Server
    Protocol](https://github.com/Microsoft/language-server-protocol).

    More details can be found here:
    <https://github.com/haskell/haskell-ide-engine/blob/master/docs/Report-2017-07.md>.

4.  Last Mile for cabal new-build  
    Student: Francesco Gazzetta  
    Mentor: Daniel Wagner

    Almost all the basic new-build commands are implemented, and the student is
    working on `new-exec` now.  A bunch of bugs have been fixed (e.g. datafiles
    for inplace builds).  After `new-exec`, the student will work on the
    much-needed `new-install`, which will probably take most of the remaining
    time (see the design concept, `#4558`).  The progress is tracked here:
    <https://github.com/haskell/cabal/projects/4/>.

5.  Totality checking base with Liquid Haskell  
    Student: Sean Leffler  
    Mentor: Niki Vazou  
    Co-mentor: Eric Seidel

    So far, the student has identified multiple minor bugs and one major bug in
    Liquid Haskell.

    While the student hasn't made great progress on actually verifying base, the
    project is turning into a research project after and a number of interesting
    ways have been identified in the ways that Liquid Haskell interacts with the
    particular style of code used in base - especially Haskell's laziness.

6.  Modularizing haskell-mode and improving haskell-interactive-mode  
    Student: Vasantha Ganesh Kanniappan  
    Mentor: Gracjan Polak

    Status of the project: Comint based Major mode for ghci repl (Inf-haskell)
    is being improved.  The student is in the middle of a number of things:
    converting the interactive-haskell-mode, the minor-mode that can be used
    along with haskell-mode for getting completion-at-point-functions, `M-.`,
    loading module to interpreter, getting type of function at point and other
    features to depend on the comint based process instead of the old
    haskell-interactive-mode.

    More information can be found in this blogpost:
    <https://blog.hustlr.in/posts/2017-07-19-midterm-eval.html>.

7.  Haskey (an embedded key-value store modeled after LMDB)  
    Student: Henri Verroken  
    Mentor: Steven Keuchel  
    Co-mentor: George Karachalias

    The following things have been finished:

    - The pure B+tree implementation.
    - The impure B+tree implementation, which abstracts over an page allocation
      back-end.
    - An append-only page allocator, a page-reusing allocator, and a concurrent
      page allocator (allowing for concurrent readers and serialized writers),
      which we are currently heavily testing.
    - Transaction support.
    - An on-disk and in-memory storage engine.

    Currently missing for our MVP (and publishing of the key-value store) are
    overflow pages to store large values and an efficient binary serialization.

8.  Improve the Shake-Based Hadrian Build System for GHC  
    Student: Zhen Zhang  
    Mentor: Andrey Mokhov

    28 PRs have been merged up to now, and two out of three major goals (dynamic
    way support and installation rule) are implemented and tested on Linux and
    OS X platforms.

    Another major goal, cross-compilation support, is also being investigated
    in-depth. Besides the coding part, 29 issues have been submitted, and
    project board has been set up.  A nightly build system & tracker, called
    Hadrian's Wall, is launched as well.  Our team will also talk about Hadrian
    in this year’s HIW at ICFP.

9.  GHC Performance improvements  
    Student: Igor Popov  
    Mentor: Jose Calderon

    Unfortunately, the student did not pass the midterm evaluation for this
    perhaps too ambitious project.

10. Improvement of Hackage Matrix Builder  
    Student: Andika Demas Riyandi  
    Mentor: Herbert Valerio Riedel

    The migration of the site's frontend to Purescript has been completed and
    soon be deployed.

    Before adding new feature, the API will be upgraded to use
    servant-purescript so frontend and backend communication will be conducted
    smoothly.  The next features that are planned are extending the UI to allow
    accessing previous historic reports that are in the database and the
    ability to traverse package dependency graphs.

11. WebGHC (a WebAssembly backend for GHC)  
    Student: Michael Vogelsang  
    Mentor: Will Fancher

    As it stands, WebGHC has solid foundations for building libc, compiler-rt,
    and ncurses to WebAssembly encoded via nix.  It is possible to use the work
    to easily compile C code to working WebAssembly.  The studnet and mentor are
    optimistic that they will be able to have something usable by the end of the
    work term.

We are very happy with the progress of the students so far and we hope that
they continue to work diligently towards the final evaluation.

Summer of Haskell 2017 is made possible by our generous sponsors:

- [haskell.org](http://haskell.org) kicked things off this year by funding a
  student and organizing the Summer of Haskell 2017 after a successful
  [Summer of Haskell 2016](https://mail.haskell.org/pipermail/haskell-cafe/2016-December/125702.html).

- [Asahi Net](https://asahi-net.jp/en/) is a Japanese Internet service provider that
  has been running stable systems for over 25 years.  They are a proud sponsor of
  the Summer of Haskell, and contribute to the Japanese Haskell community.

- [Awake Networks](http://www.awakenetworks.com/) is building a next generation
  network security and analytics platform.  They are a proud sponsor of the Summer
  of Haskell and contribute broadly to the Haskell community.

- [CodeWorld](http://code.world/) is an educational project that blends
  mathematics and Haskell programming into a visual playground.  Chris Smith has
  volunteered to fund two students to work on CodeWorld in particular.

- [Digital Asset](http://digitalasset.com/) provides Distributed Ledger solutions
  for financial institutions globally. They have developed a pure, typed,
  functional, domain specific language for writing contracts, called DAML.  They
  are a proud sponsor of the Summer of Haskell and contribute broadly to the
  Haskell community.

- [Facebook](http://facebook.com/) uses Haskell in its
  [anti-abuse infrastructure](https://code.facebook.com/posts/745068642270222/fighting-spam-with-haskell/),
  and as part of that effort we open-sourced the
  [Haxl](https://github.com/facebook/Haxl) framework which is being used at scale
  in production to automatically parallelise data-fetching code.  We're delighted
  to be able to support the Haskell community's efforts by sponsoring a student
  for this year's Summer of Haskell.

- [Fugue Inc.](http://fugue.co/) radically simplifies cloud operations with its
  software-defined system for dynamically orchestrating and enforcing cloud
  infrastructure at scale.  Fugue uses Haskell in its product and is proud to
  sponsor a student to improve the ecosystem.

- [Galois](http://galois.com/) applies cutting-edge computer science and applied
  mathematics to solve difficult technological problems, delivering practical
  solutions tailored to our clients’ needs.  Haskell and other functional
  programming languages are key tools we use in providing these solutions.

- [IOHK](https://iohk.io/) is a technology company committed to using
  peer-to-peer technologies to provide financial services to the three billion
  people who don't have them.  We implement our first-principles cryptographic
  research in Haskell and we are committed to the development of the Haskell
  ecosystem.

- [Tweag I/O](http://tweag.io) is a network of software innovation labs across
  Europe. We develop novel solutions and products for our clients around the
  world. Haskell is key to delivering fast, correct and maintainable code. We
  have shipped Haskell in anything from tiny web services to large
  high-performance compute clusters with custom hardware. We're particularly
  keen to help the community grow Haskell into the strongest systems programming
  language and ecosystem out there. We're very proud to sponsor a student this
  summer to help make it happen.

Davean has volunteered to fund a student expressly to work on the [Hadrian build
system for GHC](/ideas.html#hadrian-ghc). Steven Keuchel has provided funds for
a student to work on Haskey.
