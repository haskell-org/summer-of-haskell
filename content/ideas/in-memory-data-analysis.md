---
title: A library for in-memory data analysis in Haskell 
---

A typical workflow in interactive data analysis consists of :

* Loading data (e.g. a CSV on disk)
* Transforming the data
* Various data processing stages
* Storing the result in some form (e.g. in a database).
The goal of this project is to provide a unified and idiomatic Haskell way of carrying out these tasks.  Informally, you can think of  "dplyr"/"tidyr" from the R ecosystem, but type safe.

This project aims to provide a library with the following features:

1. An efficient data structure for possibly larger-than-memory tabular data. The [Frames][1] library is notable prior work, and this project may build on top of it (namely, by extending its functionality for generating types from stored data).
2. A set of functions to "tidy"/clean the data to bring it to a form fit for further analysis, e.g. splitting one column to multiple columns ("spread") or vice versa ("gather").
3. A DSL for performing a representative set of relational operations e.g. filtering/aggregation.

**Difficulty**: Intermediate

**Mentors**: Marco Zocca 

[1]: https://hackage.haskell.org/package/Frames