---
title: Language Server support for cabal.project files
---

## Goals

Introduce a new Haskell Language Server plugin, which provides IDE-features for `cabal.project` files.

Some possible features include:

* Diagnostics
* Completions of
    * keywords
    * filepaths
    * enum values
* Syntax Highlighting

The scope of the project can be adjusted based on the desired time frame and experience of the mentee. 
Some of these implementations can draw inspiration from the corresponding implementation in the [`hls-cabal-plugin`](https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-cabal-plugin).

## Background

[`cabal.project` files](https://cabal.readthedocs.io/en/latest/cabal-project-description-file.html) are often needed to configure how your project should be built.
Haskell developers will often write and edit these files during their development process but as of yet, Haskell Language Server (HLS) provides no IDE support for them.

Since HLS already provides IDE features for `.cabal` files it seems a natural next step to add a similar `cabal.project` plugin to HLS which provides IDE support for cabal.project files.

## Outcomes

The main outcomes are pull requests with the implementation, tests, and code
documentation of the implemented features.

A secondary outcome is a blogpost describing the experience and the results of
the project.

## Difficulty and Size

The difficulty of this project is medium, as there are two rather big existing projects that developers need to understand in order to provide improvements. 

The minimum size of this project is 90 hours, but this can easily be extended to 175 as there is likely more work depending on the mentee’s desired scope and ideas.

## Required Skills

* Read and write technical English
* Haskell programming basics

## Project Mentor

* Jana Chadt (VeryMilkyJoe)
* Co-Mentor: Fendor
