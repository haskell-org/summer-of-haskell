---
title: 'Introducing Bipartite Graphs in Alga'
author: 'Vasily Alferov'
---

I am a student at Summer of Haskell this year and I am very thankful to authors
of this site who provided me this platform to have a blog about GSoC. This is
an introduction post about my project. I am planning to write regular posts
on my progress and when I find something interesting.

The idea of the project was on the
[ideas list](https://summer.haskell.org/ideas.html#algebraic-graphs) published
earlier. There are two of us who were accepted for this project, the other one
is Adithya Kumar and it is he who will be doing the part described on the list.
He told me his GSoC blog will probably be
[there](https://adithyaov.github.io/).

My task is to introduce bipartite graphs to Alga and that is what I am going to
tell about now.

# Algebraic graphs

There are three common ways to represent graphs in computing: adjacency matrix,
adjacency lists, and edge lists. All three of them have their advantages and
disadvantages. The most commonly used is the adjacency lists approach: that is
storing a list of neighbors for each vertex. In fact, I can think of only one
common algorithm for which this approach is not perfect: it is Cruscal's
algorithm for finding the minimum spanning tree.

The problem is that feeding graphs formed this way to algorithms is not safe.
For example, if the algorithm is designed for bidirectional graphs, it may
rely on the fact that if some vertex $u$ is in the list of neighbors of some
another vertex $v$ then $v$ is in the list of neighbors of $u$.

A traditional solution for functional programming would be to guarantee the
consistency of input data for the algorithm by taking a representation of the
graph that would not allow a wrong graph to be passed. That's what we call
_type safety_.

[Alga](https://github.com/snowleopard/alga) is a library that provides such
representation with a beautiful algebraic interpretation. It also has a nice
set of algorithms out of the box. You may read a paper on Alga by its author
[here](https://github.com/snowleopard/alga-paper), I'm just going to provide
some basics.

Consider the following definition for the graph data type:

```Haskell
data Graph a = Empty
             | Vertex a
             | Overlay (Graph a) (Graph a)
             | Connect (Graph a) (Graph a)
```

The constructors mean the following:

* `Empty` constructs an empty graph.
* `Vertex v` constructs a graph of single vertex labeled `v`.
* `Overlay g h` constructs a graph with sets of unions and edges united from
  graphs `g` and `h`.
* `Connect g h` does the same as `Overlay` and also connects all vertices of
  `g` to all vertices of `h`.

One can easily construct a `Graph` of linear size having a list of edges of the
desired graph. In fact, this approach may even save memory for dense graphs
comparing to adjacency lists. And this approach is surely _type safe_ in the
sense described above.

Why algebraic? Well, if we write down simple laws for these graphs we will see
that laws for `Connect` and `Overlay` operations are very similar to those for
multiplication and addition in a semiring, respectively.

That is not at all pretending to be a complete description of Alga. There are
many other parts not covered here. One example is that `Graph` might also be
provided as a type class rather than a data type. This approach is much more
flexible.

# Bipartite graphs

An important part of Alga is providing different type-safe representations for
different kinds of graph. For example, one for edge-labeled graphs
[was introduced](https://blog.nyarlathotep.one/2018/08/gsoc-results/) at Summer
Of Code last year.

Another option is to add a representation that _restricts_ the set of possible
graphs. One example from the ideas list is to represent only acyclic directed
graphs. This is what Adithya will be doing. And my task for the first
evaluation period is to provide bipartite graphs.

There are many ideas on how to do so. For example, in my proposal I suggested
an alga-like approach:

```Haskell
data Bigraph a b = Empty
                 | LeftVertex a
                 | RightVertex b
                 | Overlay (Bigraph a b) (Bigraph a b)
                 | Connect (Bigraph a b) (Bigraph a b)
```

Here, `Connect` only connects left vertices to the right. As my mentor Andrey
figured, there is an interesting addition to the laws:
`(LeftVertex u) * (LeftVertex v) = (LeftVertex u) + (LeftVertex v)`. Of course,
the same holds for the right vertices.

By now, we agreed that in the first place I implement adjacency maps for bipartite
graphs (hey, didn't I mention that Alga uses adjacency maps on the inside?). It
doesn't make much sense to make a separate algebraic representation, but I may
do it if I find something interesting in it.

Now, the first task is to implement the conversion function, which I'm going to
start right now. This implementation will simply ignore the edges between
vertices of the same part.

```
fromGraph :: Graph (Either a b) -> Bipartite.AdjacencyMap a b
fromGraph = undefined
```

Here my summer-long dive into Haskell begins!
