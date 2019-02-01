---
title: More graph algorithms for Alga
---

The [Algebraic Graphs library](https://github.com/snowleopard/alga) has so far succeeded
(thanks in part to last years summer of code) in providing a common, 
typesafe interface for graph instances. However, general ecosystem adoption remains low,
in part due to the lack of graph algorithms provided.

Therefore the goal of this year's Summer of Code is
to increase the usefulness of alga for a wider audience:

## Goal 1: Develop a type-safe representation for acyclic graphs in alga.

Acyclic graphs are both common and heavily used in dependency
management. Improvements in this area would therefore directly
benefit downstream packages like [build](https://github.com/snowleopard/build),
[plutus](https://github.com/input-output-hk/plutus) or
[aura](https://github.com/aurapm/aura),
as well as a few commercial users of the library.

In particular, the result should be a type-safe abstraction,
that makes it easier to work with algorithms like `scc` or `topSort`
as has been remarked in [some](https://github.com/snowleopard/alga/issues/152)
[issues](https://github.com/snowleopard/alga/issues/154).

## Goal 2: Implement common graph algorithms like Kruskal, Dijkstra and Moore-Bellman-Ford

Thanks to the edge-labelled algebraic graphs developed in the build-up of
last year's Summer of Code, it is now possible to encode
distances in Alga; however, this feature is rarely used
as there are nearly zero algorithms provided.

The student should provide algorithms solving the following problems:
 - Finding a minimum spanning tree (Kruskal, Prim, ..)
 - Finding shortest paths (Dijkstra, Moore-Bellman-Ford, Floyd-Warshall)

## Optional 1: Implement more advanced algorithms

A common problem in graph theory is the following:
Given a network (e.g. a graph) with nodes s and t, find the maximum flow
that can be sent over this network from s to t. While this might seem
highly specialized at first, it can be used to solve a wide variety of problems.

Algorithms solving this or other common problems would be welcome,
as they increase the scope of what alga can be used for.

## Optional 2: Add tutorials on solving common programming problems with alga.

Since the above constitutes a significant increase in the feature set that alga supports,
community communication is key. 

In particular, one could take problems that are unconnected to alga
and show (maybe in the format of a functional programming pearl) how to
solve them with alga.

**Homepage**: https://github.com/snowleopard/alga

**Mentors**: Andrey Mokhov

**Difficulty**: Advanced
