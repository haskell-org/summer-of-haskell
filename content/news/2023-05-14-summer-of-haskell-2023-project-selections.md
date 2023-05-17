---
title: 'Summer of Haskell 2023 Project Selections'
author: 'Aaron Allen'
---

Summer of Haskell 2023 is off to a great start and we have some exciting news
to share! We received many quality proposals from which to choose and our
mentors have made their selections. Thanks to our [incredibly generous sponsors](/index.html#sponsors),
we have secured funding for nine projects! Without further ado, here are the
accepted projects:

- [Cabal file support for HLS](#cabal-file-support-for-hls)
- [Implement Resolution Methods in HLS](#implement-resolution-methods-in-hls)
- [Goto Definition for Third-Party Libraries in HLS](#goto-definition-for-third-party-libraries-in-hls)
- [Teaching Weeder About Type Class Instances](#teaching-weeder-about-type-class-instances)
- [Standardize GHC’s Error Dump in JSON Format](#standardize-ghcs-error-dump-in-json-format)
- [Maximally Decoupling Haddock and GHC](#maximally-decoupling-haddock-and-ghc)
- [Representing Pattern](#representing-pattern)
- [Improving Calligraphy](#improving-calligraphy)
- [Structured Errors and Error Codes for cabal-install](#structured-errors-and-error-codes-for-cabal-install)

# Cabal file support for HLS
Contributor: Jana Chadt  
Mentor: Fendor  
Abstract:  

> The goal of this proposal is to provide cabal file support for Haskell Language
> Server. I have been working on the cabal plugin for Haskell Language server
> during various Hackathons since 2021, implementing
> [formatting](https://github.com/haskell/haskell-language-server/pull/2047) and
> [code-completion](https://github.com/haskell/haskell-language-server/pull/3268)
> of cabal files and I would like to be able to commit to working on the plugin
> full time this summer.

# Implement Resolution Methods in HLS
Contributor: Nathan Maxson  
Mentor: Michael Peyton Jones  
Abstract:

> With “codeAction/resolve” and “codeLens/reslove” the language server protocol
> has added methods to allow language servers to delay some of the work it needs
> to do for codeActions and codeLens until it is actually needed, allowing the
> server significant savings in both memory and cpu usage. This proposal is to
> add both of these methods to the haskell-language-server, allowing plugins to
> call them at will. In addition I propose adding support for the resolve methods
> to some haskell language server’s plugins.

# Goto Definition for Third-Party Libraries in HLS
Contributor: Elodie Lander  
Mentor: Zubin Duggal  
Abstract:

> Making goto definition work for third party libraries is of interest to me as a
> Haskell developer because it is a feature I would like to use in my Haskell
> development. In fact, it is the feature that might finally motivate me to use
> HLS in my own projects. My Haskell workflow has usually involved a lot of
> switching back and forth between my editor and Hackage documentation in the
> browser. I believe that being able to see third party library definitions in my
> editor would reduce this back and forth significantly and help increase my
> efficiency as a Haskell developer.

# Teaching Weeder About Type Class Instances
Contributor: Vasily Sterekhov  
Mentor: Ollie Charles  
Abstract:

> A frequent complaint about Haskell is the lack of tooling. This proposal aims
> to contribute to improving the situation by addressing a particular limitation
> of Weeder, a tool for detecting dead code. In the process, this may involve
> proposing minor additions to hie files to GHC, which may benefit other similar
> projects working in the same area.

# Standardize GHC’s Error Dump in JSON Format
Contributor: Ben Bellick  
Mentor: Aaron Allen  
Abstract:

> GHC is currently undergoing a long scale project to move to a more structured
> error representation by treating errors as values. An additional useful feature
> that can be made available is to dump a JSON representation of warnings/errors.
> An experimental implementation of this feature exists when GHC is invoked with
> -ddump-json, although this is an unfinished command which suffers from the
> following:
> 
> - it is non-standardized
> - it does not leverage new structured error representation
> - previous implementation issues led to a hard-coding of output to stdout
> 
> There is an opportunity to benefit consumers of GHC output and to improve Haskell
> tooling infrastructure. Some examples of possible use-cases for down stream
> consumers can be found
> [here](https://gitlab.haskell.org/ghc/ghc/-/issues/19278). Not all consumers of
> Haskell’s error messages intend on doing so via the GHC API, and such a
> standardized JSON output enables a larger set of developers to expand the error
> tooling in the Haskell ecosystem. I am also personally excited to help with
> this project because I love Haskell and want to make a contribution to one of
> its crowning achievements–GHC. I am especially interested in any improvements
> which enable outside consumers to better understand/process the internals of
> the compiler.

# Maximally Decoupling Haddock and GHC
Contributor: Gregory Baimetov  
Mentor: Laurent P. René de Cotret  
Abstract:

> In practice, development and usage of Haddock is strongly coupled to the
> internals of the Glasgow Haskell Compiler (GHC). One concrete example of this
> coupling is the fact that Haddock makes use of the GHC parser itself.
> Therefore, if Haddock was compiled using GHC version X, it might not be able to
> parse the source code of a Haskell program written for GHC version Y > X.
> 
> This strong coupling between GHC and Haddock slows down Haddock development and
> prevents Haddock from being better integrated in other tools, such as Hackage,
> the Haskell Language Server, or Hoogle.

# Representing Pattern
Contributor: Saachi Kaup  
Mentor: Alex McLean  
Abstract:

> Using Haskell’s advanced type system to map the structures in Tidal Cycles to
> the underlying shapes of Mandala art and produce beautiful visualisations.

# Improving Calligraphy
Contributor: Dominic Mills  
Mentor: Luis Morillo Najarro  
Abstract:

> Calligraphy, a tool for visualizing Haskell projects, faces the challenges of
> developing and maintaining Haskell tooling due to the constantly evolving
> nature of the language and its implementation in GHC.
> 
> In light of these challenges, the primary aim of this Summer of Haskell project
> is to enhance the Calligraphy tool to provide visualizations that are both
> simple and easy to use. This will be done by modularizing the Calligraphy tool
> into its various parts such as the calligraphy-gui, calligraphy-graphviz,
> calligraphy-cli, and calligraphy-fgl. In addition to keeping it up-to-date with
> GHC releases.

# Structured Errors and Error Codes for cabal-install
Contributor: Suganya Arun  
Mentor: Gershom Bazerman  
Abstract:

> The https://errors.haskell.org/ site provides an index that maps error codes in
> haskell tooling to documentation. GHC, ghcup, and stack have all begin to
> implement support for structured errors that have assigned codes. This project
> is to refactor the cabal codebase to also provide structured errors rather than
> mere strings, and also assign cabal errors corresponding codes that can be
> added to the error index.
