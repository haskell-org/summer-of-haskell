---
title: Improve Calligraphy
---

The [Calligraphy](https://github.com/jonascarpay/calligraphy) tool is a great way to visualize a Haskell project, but it lacks interactivity and some features. This project aims to improve the current state of the tool.

Adding interactivity is difficult as it needs some sort of frontend like JavaScript or Gtk. Some effort has being done in a possibly abandom [PR](https://github.com/jonascarpay/calligraphy/pull/9). We would like to improve a different aspect of the tool: usability. Right now the Calligraphy uses an ad-hoc Builder to write the Dot file and an ad-hoc Graph type. This approach is clearly a maintenance burden since it doesn't allow to add new features such as: Coloured output, out-of-the-box graph algorithms, arrow points, layout dimension, node/edge url's , etc...

The main idea is to substitute current ad-hoc implementation for Haskell's libraries [fgl](https://hackage.haskell.org/package/fgl) and [graphviz](https://hackage.haskell.org/package/graphviz-2999.20.1.0). Since this might be a lot of work I propose to focus on `graphviz` library first, to see if we can use a proper Dot Builder. Afterwards, we can see if using `fgl` provides any benefit over the current internal graph representation.

Ideally, we can implement a new `calligraphy` query using the facilities `graphviz` and `fgl` provides: `calligraphy --show-usage MODULE.function_name` which shows the function name, its type signature and argument candidates. Below, there is an sketch of such a visualization.

```txt
 /---------\
| aggregate | (Ix i, GrouppedData a) => AggDataFrame i a -> AggStrategy a b -> DataFrame b
 \---------/    ^    ^                  ^                   ^
                |    |                  |                   |   /---\              (----------------------------------)
|---------| ----|    |                  |- emptyDF          |- | sum |   <-------- | DataFrame.Aggregations.Functions |
|   Ix    |      |----------------|                         |   \---/         |    (----------------------------------)
| Int     |      | GrouppedData a |                         |                 |
| Integer |      | [a]            |                         |   /----\        |
| Bool    |      | Vector a       |                         |- | mean |  <----|
|---------|      |----------------|                         |   \----/
 ^                    ^
 |                    |
(-----------------)   (---------------------------------)
| DataFrame.Index |   | DataFrame.Aggregations.Groupped |
(-----------------)   (---------------------------------) 

```

The example above shows a function `aggregate` which arguments depend on type classes `Ix` and `GrouppedData` and some library type `AggStrategy`. For a new user, it is difficult to understand whats going on and how `aggregate` function should be used. The goal is to rely on `calligraphy` for having visual information about type class instances, functions, etc... and where among the module hierarchy we can find such information.

**Potential Mentors**: Luis Morillo Najarro

**Difficulty**: Medium

**Size**: 350 hours, possibly 175 for an experienced contributor
