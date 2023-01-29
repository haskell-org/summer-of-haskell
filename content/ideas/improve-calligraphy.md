---
title: Improve Calligraphy
---

The [Calligraphy](https://github.com/jonascarpay/calligraphy) tool is a great way to visualize a Haskell project, but it lacks interactivity and some features. This project aims to improve the current state of the tool.

Adding interactivity is difficult as it needs some sort of frontend like JavaScript or Gtk. Some effort has being done in a possibly abandom [PR](https://github.com/jonascarpay/calligraphy/pull/9). We would like to improve a different aspect of the tool: usability. Right now the Calligraphy uses an ad-hoc Builder to write the Dot file and an ad-hoc Graph type. This approach is clearly a maintenance burden since it doesn't allow to add new features such as: Coloured output, out-of-the-box graph algorithms, arrow points, layout dimension, node/edge url's , etc...

The main idea is to substitute current ad-hoc implementation for Haskell's libraries [fgl](https://hackage.haskell.org/package/fgl) and [graphviz](https://hackage.haskell.org/package/graphviz-2999.20.1.0). Since this might be a lot of work I propose to focus on `graphviz` tool first, to see if we can use a proper Dot Builder. Afterwards, we can see if using `fgl` provides any benefit over the current internal graph representation.

**Potential Mentors**: Luis Morillo Najarro

**Difficulty**: Hard

**Size**: 300 hours
