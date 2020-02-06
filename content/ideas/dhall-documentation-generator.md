---
title: Documentation generator for the Dhall configuration language
---

The [Dhall configuration language][website] is a
[programmable configuration language][programmable] designed to balance ease of
maintenance with general-purpose programming language features.  The Dhall
language has [multiple independent implementations][integrations], each of which
binds to a different host programming language, similar to how JSON or YAML can
be read into multiple programming languages.  However, a large number of
supporting tools are built on top of the Haskell implementation, mainly because
that was the first Dhall implementation.

One supporting tool of interest is a documentation generator.  Up until now,
Dhall packages have been mostly hosted on GitHub/GitLab and documentation
consists of inline comments within source files, such as this one:

* [`Prelude/JSON/Type`][prelude-json-type]

Many users have requested a more polished solution for generating documentation
from these commented source files, analogous to Haskell's `haddock` tool (a
documentation generator for Haskell), which they can then host (as HTML) or
include within their Dhall projects (as Markdown files checked into version
control).  There have even been some nascent attempts to implement this, such
as:

* [Generate HTML documentation for Prelude][generate-documentation-prelude]

To that end, the goal of this project is to implement a command line
documentation generator whose input is a directory tree containing a Dhall
package and whose output is documentation in either markdown or HTML form.  The
scope of this project does *not* include hosting documentation on behalf of
users.  In other words, this project will only build a Dhall analog of `haddock`
and will not attempt to build a Dhall analog of Hackage.

This project should be appropriate for an beginning Haskell programmer with
web development experience.  The amount of Haskell code required to write the
first draft of the project should be small and there will be many opportunities
within the project to exercise web development skills to improve the visual
appeal, user experience, and ease of comprehension of the generated
documentation.

The project scope can also be extended depending on how things progress by
adding features common to other documentation generators, such as:

* Rendering tests (which are natively supported by the language)
* Browsing the original source code
* Type on hover (within the rendered source code)
* Jump to definition (within the rendered source code)

**Potential Mentors**: Gabriel Gonzalez, Simon Jakobi

**Difficulty**: Beginner

[generate-documentation-prelude]: https://github.com/dhall-lang/dhall-lang/issues/760
[website]: https://dhall-lang.org/
[programmable]: https://docs.dhall-lang.org/discussions/Programmable-configuration-files.html
[integrations]: https://docs.dhall-lang.org/howtos/How-to-integrate-Dhall.html
[prelude-json-type]: https://github.com/dhall-lang/dhall-lang/blob/v13.0.0/Prelude/JSON/Type
