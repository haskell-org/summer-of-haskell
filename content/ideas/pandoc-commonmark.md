---
title: 'Add a CommonMark parser to Pandoc'
---

[Pandoc] is a very popular tool to convert documents to other formats.  One of
the most common conversions is converting [Markdown] to HTML.  Unfortunately,
Markdown is not well-specified so different tools will produce distinct results
for the same Markdown.

[CommonMark] is an attempt to solve this problem.  It consists of an unambiguous
specification, a reference implementation, and an extensive test suite.  Pandoc
naturally needs to support this format.

Currently pandoc uses a wrapper around libcmark (the C parser) for commonmark
and gfm.  Having a pure Haskell parser would improve security and allow us to
add more extensions.  It would also allow compilation to JavaScript with
`ghcjs`.

In other languages, people have written some very efficient CommonMark parsers
(cmark and commonmark.js) that can serve as inspiration.  However, the parsing
algorithms are very imperative and rely on mutable data structures.  It will be
an interesting project write a nice functional CommonMark parser that share some
of the performance properties of these imperative parsers:

- Fast
- Non-backtracking
- No space/time blowups on specific input cases

In addition to the CommonMark parser, there are [more ideas] available for
Pandoc, too many to list them here.

[Pandoc]: https://pandoc.org/
[Markdown]: https://daringfireball.net/projects/markdown/
[CommonMark]: http://commonmark.org/
[more ideas]: https://github.com/jgm/pandoc/issues/1852

**Mentors**: John McFarlane

**Difficulty**: Beginner
