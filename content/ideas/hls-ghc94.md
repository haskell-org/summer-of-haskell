---
title: Haskell Language Server on GHC 9.4
---

Haskell Language Server (HLS) is the official LSP server for Haskell. It is
built on top of the GHC api, has a plugin model, and ~20 contributed plugins at
the time of writing this.

To keep the development of HLS sustainable, we need to enable plugin owners
to maintain and update their plugins to new GHC version. But for that,
ghcide and the rest of core HLS packages need to be updated first!!
Until those are done, plugin maintainers are unable to update their plugins.

Looking at previous GHC update efforts, this project will involve:

1. Creating an issue in the HLS github project to track the work items
1. Contributing patches to update dependencies to GHC 9.4 (both upstream and to head.hackage)
2. Cleaning up and extending the GHC compatibility layer in ghcide
3. Updating ghcide and other core HLS packages to build with 9.4
4. Updating CI to run 9.4 builds and tests
5. Updating the HLS Cabal descriptors to build a 9.4 binary
5. (stretch goal) Updating core plugins to 9.4

HLS has an excellent project track record including previous GSoC, Tweak fellowships, and self-financed.

**Potential Mentors**: Zubin Dugal

**Difficulty**: Medium

**Size**: 350 hours, possibly 175 hours for a strong, experienced contributor

**Links**:

- [HLS Github project](https://github.com/haskell/haskell-language-server)
- [Keeping the development of HLS sustainable](https://github.com/haskell/haskell-language-server/discussions/2588#discussioncomment-1975076)
- [GHC 9.2 update issue](https://github.com/haskell/haskell-language-server/issues/2179)
- [HLS 2021 summer project](https://mpickering.github.io/ide/posts/2021-07-22-summer-of-hls.html)
- [GSoC 2021 rename plugin](https://gist.github.com/OliverMadine/96927f88b6e5e7890e5179559089166c)
- [GSoC 2021 call hierarchy plugin](https://github.com/haskell/haskell-language-server/pull/1955)
- [Tweak Fellowship 2020](https://www.tweag.io/blog/2020-10-07-ghcide-fellowship-summary)
- [GSoC 2020 binaries + other](https://gist.github.com/bubba/22719e8854c728bc726d1a6cfb9ded81)
- [GSoC 2020 multiple home units](https://gist.github.com/fendor/5b26d36538787c8c2ed8c6eb6e68541f)
