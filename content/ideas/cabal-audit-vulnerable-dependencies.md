---
title: cabal-install security vulnerability checking
---

*cabal-install* is a widely used tool for building Haskell projects.
In addition to building and testing packages it can update package
indexes from remote servers and handles some aspects of dependency
management.

The Haskell Security Response Team maintains the Haskell [Security
Advisory Database][advisory-db].  This database can serve as the
basis for enhancing security tooling for the Haskell ecosystem.

In particular, the Advisory Database records known vulnerabilities
of packages in the Hackage namespace.  The advisory data includes
the affected version ranges, written summary and details of the
vulnerability, CVSS score and CWE numbers.

We propose the addition of security vulnerability checking to the
`cabal-install` tool.  For discussion purposes, this document
suggests the `cabal audit` subcommand name, but this is just a
suggestion.

When executed in package or project context, `cabal audit` would
analyse the dependencies of the package/project and advise when
vulnerable dependencies are found.  There are several considerations
that warrant further discussion.

- `.cabal` files, in general, specify version *bounds* via the
  `build-depends` field.  In the general case, any overlap between a
  dependency's version bounds specified in the `build-depends`
  field, and known vulnerable version ranges specified in an
  advisory should be reported.

- `cabal-install` can produce *freeze* files via the `cabal freeze`
  subcommand, which specify an exact set of dependencies locked at
  particular versions.  `cabal audit` should have a mode that
  analyses freeze files.  (This mode could work with an explicit
  input file, outside of a package or project directory context).

- In some cases, the vulnerable behaviour in a dependency is not
  used by the dependent library or program.  A mechansim (or
  mechanisms) to suppress false positives is a requirement.  Some or
  all of the following mechanisms should be considered:

  - A local cache of suppressions.  In plain words, this would
    record information such as "suppress HSEC-2024-0001 for package
    *acme-frobnicator*".

  - Extending the Cabal package metadata to enable package
    maintainers or trustees to record such suppressions in the
    package metadata itself.  The data would be propagated through
    package indexes (e.g. Hackage) and ensure that users do not see
    false positives, after the metadata have been uploaded to the
    package index.

  - Extending the Advisory Database to record non-exploitability
    information.  This is an alternative way of expressing and
    propagating the same data as the preceding point.  The
    approaches are not mutually exclusive.  The student should
    engage with the community and pursue a consensus on which
    approach is preferred, or if both are desired, which should be
    prioritised.

  - The [*VEX (Vulnerability Exploitability eXchange)*][VEX]
    standard might provide an appropriate data model for recording
    and/or transmitting (non-)exploitability information.

  - The Advisory Database can *optionally* record, for each
    advisory, the **names of the problematic functions/values**.  It
    may be possible to use this data to *produce* exploitability
    information, but *how* to do so may be complicated or error
    prone.  Depending on progress made, the student may or may not
    wish to pursue this idea.

  - Commands or behaviours to assist the user in **reporting
    vulnerabilities** to the Advisory Database is another idea to
    consider, if time permits.

See also David Christian's [call to action][] for writing a security
advisory analyser for Haskell, which discusses the same general
topic.

[advisory-db]: https://github.com/haskell/security-advisories
[VEX]: https://www.cisa.gov/resources-tools/resources/minimum-requirements-vulnerability-exploitability-exchange-vex
[call to action]: https://discourse.haskell.org/t/would-you-like-to-write-a-security-advisory-analyzer/7638


## Mentorship

Ideally a *Cabal*/*cabal-install* developer/maintainer would be able
to mentor the student.

Haskell Security Response Team can mentor and collaborate with
respect to the Advisory Database, the content of advisories,
expanding the database to include exploitability information, or
exporting the data in a format suitable for use by *hackage-server*.

## Difficulty and size

A *Cabal*/*cabal-install* maintainer should weigh in, but this whole
effort definitely lies on the larger end.

**Difficulty**: Medium/Hard

**Size**: 350 hours
