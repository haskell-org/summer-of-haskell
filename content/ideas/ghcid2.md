---
title: ghcid2, hot reloading code daemon
---

[https://github.com/ndmitchell/ghcid], GHCi as a daemon, is an ancient piece
of software that allows for fast reloading of GHC code.

Especially important is first-class support for Cabal/Stack.

There are many bugs related to how it loads and how it handles reloading,
calling for a rewrite based on the [hie-bios](https://github.com/haskell/hie-bios).

The goal is to be able to compile programs as fast as possible,
while still being able to run short lives script or long-running processes.

## Mentorship

Ideally someone familiar with the *HLS*.

## Difficulty and size

It's quite tricky to get a grasp of how it should work, there might even be
changed needed to GHC.