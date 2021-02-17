---
title: Pandoc Figures
---

[Pandoc], the universal document converter written in Haskell, is not
only a verstile conversion tool, but has also become a central part of
scholarly publishing pipelines. It is an integral part of [R Markdown]
used by many scientists. It is also being used for the production of
academic journals, e.g. [JOSS], [kommunikation@gesellschaft].

Figures are an integral part of scientific communication, and of
documents in general. The goal of this project is to extend pandoc's
basic [handling of figures] to satisfy the demands of modern
single-source publishing.

In the scope of this project, pandoc's central document data type will
be modified such that it can capture the necessary information. This
will also require adjustments to multiple parts of pandoc. Full figure
support should be implemented for at least one input and output format,
e.g. HTML.

The nature of the issue makes it a good candidate for an iterative
approach, i.e., designing and refining the pandoc AST in close contact
with the mentors. The project can build on [prior work], but it should
be continuously re-evaluated and updated during the course of this
project.

Further goals might be the design and implementation of a figure
interface usable by [Lua filters], and experimental extensions to the
Markdown syntax to allows authors to make best use of the new features.

**Helpful skills**:

The project will require a basic familiarity with Haskell. Driving the
design with the help of algebraic data types can be a useful skill for
rebuilding the relevant central data structures. Some experience with
markup and typesetting formats like HTML and LaTeX would be ideal.

The project might also involve [Lua] API usage and programming. This, as
well as other details, can be picked up during the project and with
guidance of the mentors.

**Potential mentors**:

  - Albert Krewinkel
  - Alison Hill
  - Christophe Dervieux

**Difficulty**: Beginner, Intermediate

[Pandoc]: https://pandoc.org/
[R Markdown]: https://rmarkdown.rstudio.com/
[JOSS]: https://joss.theoj.org/
[kommunikation@gesellschaft]: https://kommunikation-gesellschaft.de/
[handling of figures]: https://github.com/jgm/pandoc/issues/3177
[prior work]: https://github.com/jgm/pandoc-types/pull/83
[Lua filters]: https://pandoc.org/lua-filters.html
[Lua]: https://lua.org/
