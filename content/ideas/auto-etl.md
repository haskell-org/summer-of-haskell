---
title: Automatically generate Elaborate-Transform-Load skeletons for Data Science projects
---

As our package database ([Hackage](https://hackage.haskell.org)) grows, we get more and more data formats that can be easily parsed by our code. But it is increasingly difficult to find relevant parsers, and check whether they support given file format out-of-the-box.

Data Scientist interested in quick-and-dirty analyses need to either:
* spend some time just on parser and library discover for new formats,
* limit themselves to projects that only use formats they know well (like `.csv`),
* fall back to inefficient process using dynamically typed languages like Python and Octave.

It would be great to use Stackage and Hackage to establish a database of supported formats,
along with demonstration code that reads given file type.
First we can build the tool that automatically recognizes types and tries to parse them with the standard libraries, then we put it onto the web service, that takes data directory, and gives Haskell program that parses all the data inside.

**Mentor**: [Michal Gajda](mailto:migamake&#64;migamake.com)

**Difficulty**: Medium

