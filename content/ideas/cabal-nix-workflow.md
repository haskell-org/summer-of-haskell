---
title: Haskell specific tooling for working with nix projects
---

[Nix](https://nixos.org/nix/) is becoming more and more widely used as a way to
manage package dependencies.  This is despite the approach being quite low level
and difficult to use. There are very few layers of abstraction which isolate
less experienced uses from the internal workings of the nix machine.

There are currently three main ways in which people use nix and Haskell together.
All of these have different benefits and tradeoffs.

1. Using `stack` with nix (somewhat common)
2. Using `cabal` with the nix option (very uncommon)
3. Using nix directly (the most common)

To take each option in turn.

1.  only uses nix to manage non-haskell dependencies. This is clearly not ideal
    as we can't make use of the binary caching or anything else which is great
    about nix.

2.  is quite simple minded currently and relies on the presence of an already
    generated `shell.nix` file. When the option is set several commands are run
    in this shell instead of using cabal's normal dependency management.

3.  The most flexible option is to invoke `cabal2nix` yourself and then
    manipulate the environment using `nix-shell` but there are several
    redundancies in this approach such as having to regenerate the `shell.nix`
    file every time your cabal file changes.  It is also quite low level and
    requires in-depth knowledge about how nix works. We want to abstract away
    from this.

However, the ideal tool doesn't yet exist. We want a tool that has the following philosophy:
Nix, you are responsible for provisioning the correct environment but I will take
care of the all important aspects of the build.

The user provides a declarative specification of their necessary environment (by a cabal file
or some other means), then when a user runs a command, nix provisions this
environment and then the tool runs the haskell specific commands necessary to
build the package locally.

As an exemplification of this, using workflow (3), by default invoking `cabal2nix --shell`
will generate a nix expression which loads both the build and test dependencies into the
environment. It is not usual for the test dependency tree to quite a bit larger than the
build dependency tree. Ideally, when a user runs "cabal build", cabal should enter
a nix shell with the appropriate build dependencies for building whichever component
it wants to build and no more. Similarly, "cabal test" should enter an
environment with test dependencies. It is currently possible to achieve this
for benchmarking dependencies by the somewhat archaic `nix-shell --argstr doBenchmark true`.

Some more possible angles to explore are:

* In a `cabal.project` file we can specify additional local dependencies.
In `--nix` mode, these should turn into overrides of the local package set and `nix` should
build them.

* There should be an easy way to "pin" a nixpkgs version so that builds are reproducible.
This could take the form of specifying a hash directly of a nixpkgs commit or more indirectly
such as specifying a `lts` version (with an appropriately generated package set) and so on.

* `cabal build --nix -w ghc-8.0.2` should modify the environment to provision the
  8.0.2 package set rather than rely on the user to have already installed the
  compiler locally.

* [Extending `cabal2nix` to work with `cabal.project` files.](https://github.com/haskell-org/summer-of-haskell/pull/45#issuecomment-361255425)

This is more of a framework for a project proposal rather than a concrete idea,
and there are many more angles to explore. A successful proposal will need to
flesh out in detail what would be necessary to implement one or perhaps two of
these ideas.

- https://github.com/haskell-org/summer-of-haskell/pull/45
- https://github.com/Gabriel439/haskell-nix/
- https://docs.haskellstack.org/en/stable/nix_integration/
- https://www.haskell.org/cabal/users-guide/nix-integration.html
- https://github.com/jyp/styx
- https://nixos.org/nix-dev/2016-September/021765.html

**Difficulty**: Advanced
