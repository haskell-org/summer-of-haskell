---
title: Enhance Hackage server to display security vulnerability information
---

[Hackage][hackage-web] is the Haskell community's central package
archive of open source software.  It is an instance of the open
source [hackage-server][] program.

[hackage-web]: https://hackage.haskell.org/
[hackage-server]: https://github.com/haskell/hackage-server

The Haskell Security Response Team maintains the Haskell [Security
Advisory Database][advisory-db].  This database can serve as the
basis for enhancing security tooling for the Haskell ecosystem.

In particular, the Advisory Database records known vulnerabilities
of packages in the Hackage namespace.  The advisory data includes
the affected version ranges, written summary and details of the
vulnerability, CVSS score and CWE numbers.

[advisory-db]: https://github.com/haskell/security-advisories

We propose to enhance hackage-server to use the advisory database to
augment package pages with security information about the package.
In particular, we propose:

- Updating package/version pages to clearly indicate that the
  package/version contains known security issues, and provide
  details of those issues (a brief summary with a link to an
  external resource could be sufficient).

- Updating package/version pages to clearly indicate that the
  package/version depends on (or *may* depend on, according to
  version bounds) vulnerable version of *other* packages.

- Provide a link or information on every package page about how to
  report security vulnerabilities in that package.  This could be a
  form that creates an issue or pull request against the
  `security-advisories` repository, sends an email to the SRT, or
  something along those lines.

[call to action]: https://discourse.haskell.org/t/would-you-like-to-write-a-security-advisory-analyzer/7638

## Mentorship

Ideally someone familiar with the *hackage-server* implementation
would be able to mentor the student.

Haskell Security Response Team can mentor and collaborate with
respect to the Advisory Database, the content of advisories, or
exporting the data in a format suitable for use by *hackage-server*.

## Difficulty and size

**TODO**: we would like someone familiar with *hackage-server* to
provide difficulty and size estimates.
