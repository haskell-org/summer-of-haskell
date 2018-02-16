---
title: Benchmarking graphs libraries and optimizing algebraic graphs
---

Graphs are a very important data structure and they are known to be a bit difficult to manipulate in functional languages. Several libraries are currently implemented to create and use graph in Haskell, each of them representing the data differently : [Data.Graph](https://hackage.haskell.org/package/containers-0.5.11.0/docs/Data-Graph.html) from containers, [fgl](https://hackage.haskell.org/package/fgl), [hash-graph](https://github.com/patrickdoc/hash-graph) and [alga](https://github.com/snowleopard/alga).

Due to their differences and the lack of a reference benchmark, it is not easy for a new user to find the best one for his project.


There will be two major tasks in this proposal

* Write a high-quality, reusable and fair benchmarking of these libraries. The main goal is to help developers to choose easily the library that fits their project.

* Help Alga. Because of its promising and totally new approach (based on mathematical results about algebra of graph), Alga lack some important features and it is not yet user-friendly. So the majors tasks will be to:

  * [Write a tutorial](https://github.com/snowleopard/alga/issues/41). The project is well documented, but a new user can be lost in this new thinking of graphs.
  * Implement missing algorithms and optimize existing one. Graphs library needs to provide some basic algorithms of graph theory, and due to the approach of alga, all of them needs to be re-designed.
  * As a bonus, think and try to implement [labelled-edges graphs](https://github.com/snowleopard/alga/issues/17). It is listed as bonus, because the theory behind is not totally fixed and will need some discussion on the way to implement it.

The core of this project will be to work with the community. Only a large number of developer (especially the one from libraries themselves) can help to, for example, find a right approach for a useful benchmarking tool, how to represent the result in a good form and how to document them (which test-case represent which use-case). 
Concerning Alga, there is a lot to do and again, nothing could be done without the community: Which algorithms are needed, the idea of an implementation, feedback on the current one...

The outcome will also benefit the entire community: helping new developer to choose the right library, helping current developer of these libraries to focus on some optimization and make algebraic graph a real alternative to existing ones.

**Mentor**: Andrey Mokhov

**Difficulty**: Intermediate.
