---
title: Benchmarking graph libraries and optimising algebraic graphs
---

Graphs are a very important data structure and they are known to be difficult to work with in functional programming languages. Several libraries are currently implemented to create and process graphs in Haskell, each of them using different graph representation: [Data.Graph](https://hackage.haskell.org/package/containers-0.5.11.0/docs/Data-Graph.html) from containers, [fgl](https://hackage.haskell.org/package/fgl), [hash-graph](https://github.com/patrickdoc/hash-graph) and [alga](https://github.com/snowleopard/alga).

Due to their differences and the lack of a reference benchmark, it is not easy for a new user to find the best one for their project.

There will be two major tasks in this proposal:

* Develop an automated and fair benchmarking suite for these libraries. The main goal is to help developers to choose easily the library that fits their project.
The suite will benchmark:
  * Graph construction (e.g. from a list of edges).
  * Graph deconstruction (e.g. to a list of edges).
  * Graph manipulation (add/remove a vertex or an edge).
  * Graph lookup (test existence of a vertex or an edge).
  * Graph algorithms (reachability, topsort, DFS, BFS, SCC).
On sparse/dense and weighted/unweighted graphs.

The "automated" adjective denote the ability to automatically update benchmarks when a new version of a graph library is released.
The "fair" one is about the community part of the project. Haskell community should agree that the libraries are used correctly and to their full potential. The student will make effort to contact library authors to receive their feedback.

* Help improve the [alga](https://github.com/snowleopard/alga) library. It is a promising and new approach (based on mathematical results about an algebra of graphs), but it lacks some important features, a user-friendly tutorial, and has not yet been optimised for performance. Hence the following subtasks:

  * [Write a tutorial](https://github.com/snowleopard/alga/issues/41). Alga is well documented, but a new user can be lost in this new way of thinking about graphs.
  * Implement missing algorithms and optimise existing ones on the basis of the developed benchmarking suite. Graph libraries are expected to provide some basic algorithms, but because Alga is so different from conventional graph representations most of these algorithms need to be designed from scratch.
  * As a bonus, try to implement [edge-labelled graphs](https://github.com/snowleopard/alga/issues/17). It is a high-risk subtask, because the theory behind it is still being worked out and requires further discussions.

Working with the Haskell community is the core of this project. The student will engage Haskell developers, in particular both users and authors of existing graph libraries, in order to develop a high-quality well-documented benchmarking suite. 
Concerning Alga, there is a lot to do and again, the input of the community will be essential to decide which algorithms are needed, how to implement them, and receive feedback on the results.
Alga is new, but the student will have support from the library author and will share the challenges with the Haskell community in blog posts.

It is hoped that the project will also benefit the entire community: it will help new developers to choose the right library, help current developers of these libraries to focus on specific optimisation goals and missing features, and, finally, make algebraic graphs a real alternative to existing graph libraries.

**Mentor**: Andrey Mokhov

**Difficulty**: Intermediate
