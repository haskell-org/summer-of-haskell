---
title: 'Student Blog: GSoC Results'
author: 'Vasily Alferov'
---

I am a student at Summer of Haskell this year, and that's my final post. This
post is written to sum up the work I've done. Although this post is a formal
requirement of GSoC, I hope that this post is attractive to everyone.

# My proposal

When you apply to Summer of Code, you write a proposal. The proposal is a
document in which you describe your ideas on the chosen project. It should be a
clear, detailed text with suggestions on every subtask. The proposal should also
include a timeline, in which you estimate the time you spend on every subtask.

I chose [this](https://summer.haskell.org/ideas.html#algebraic-graphs) project
for my summer. In my proposal, I drafted all the algorithms mentioned in the
list and suggested a few more. I published this part of my proposal as a Github
gist [there](https://gist.github.com/vasalf/c246171d8ebd784487624853566b8df2).

I don't suggest this gist as an example of a good proposal. It's only a part of
the document I submitted. You should also include some information about you,
together with the timeline. Communication with your future mentors is also a
significant part of the application.

However, as I mentioned in
[one of my previous posts](https://summer.haskell.org/news/2019-05-29-alga-introduction.html),
another student is doing the part suggested in the ideas list. My task is to
introduce bipartite graphs.

This task was my idea. I mentioned it in my proposal. I meant that finding
maximum matchings in bipartite graphs should be easily implemented when we have
algorithms for finding maximum flows in networks. Kuhn's algorithm is an
application of the Ford-Fulkerson algorithm, and the Hopcroft-Karp algorithm is
an application of Dinic's algorithm.

However, this option is not the best. Both algorithms have specialized
implementations that work times faster. So my task for this summer was to
introduce bipartite graphs and special functions for them.

# What I've done

I made four pull requests to Alga this summer. Each pull request represents a
separate task and summarizes the work of several weeks.

Each PR contains the actual implementation, tests, and documentation. The whole
project is release-ready after merging each one of them. I put the tests in the
`test/` directory. The documentation for each function and datatype precedes the
declaration. After release, it will compile to beautiful Haddock file like
[this](http://hackage.haskell.org/package/algebraic-graphs-0.4/docs/Algebra-Graph.html).

# Part I. Definition and properties.

**Link to PR:** [https://github.com/snowleopard/alga/pull/207](https://github.com/snowleopard/alga/pull/207)

In this part, I defined the `Bipartite.AdjacencyMap` datatype and added many
functions for its properties.

The datatype represents a map of vertices into their neighbours. I defined it a
two maps:

```Haskell
data AdjacencyMap a b = BAM {
    leftAdjacencyMap :: Map.Map a (Set.Set b),
    rightAdjacencyMap :: Map.Map b (Set.Set a)
}
```

The properties are based on the
[properties](http://hackage.haskell.org/package/algebraic-graphs-0.4/docs/Algebra-Graph.html)
of graphs in Alga.

# Part II: Testing bipartiteness

**Link to PR:** [https://github.com/snowleopard/alga/pull/218](https://github.com/snowleopard/alga/pull/218)

There is a folklore algorithm that tests a given graph on being bipartite. The
task to implement this algorithm in Haskell was a little challenge for me.

I finished up with the following definition of the function:

```Haskell
detectParts :: Ord a => AM.AdjacencyMap a -> Either (OddCycle a) (AdjacencyMap a a)
```

This naturally means that the graph is either bipartite or contains an odd
cycle.

The implementation is so exciting that I wrote a whole
[post](https://summer.haskell.org/news/2019-07-26-testing-bipartiteness.html)
about it. I explained the reason I needed monad transformers there and made some
interesting benchmarks that pointed me to use the explicit `INLINE` directive.

# [WIP] Part III. Graph families.

**Link to the unfinished PR**: [https://github.com/snowleopard/alga/pull/226](https://github.com/snowleopard/alga/pull/226)

Some families of graphs are bipartite: simple paths, even cycles, trees,
bicliques, etc. The task is to provide a simple method to construct all those
graphs.

The most exciting part of this task was to provide type-safe implementations.
For example, only cycles of even length are bipartite. And speaking of paths, we
should provide a method for constructing paths of vertices of two different
types.

The `circuit` definition for constructing graphs containing one even cycle is
simple:

```Haskell
circuit :: (Ord a, Ord b) => [(a, b)] -> AdjacencyMap a b
```

For the paths, I added a special type for alternating lists:

```Haskell
data List a b = Nil | Cons a (List b a)
```

So the `path` definition is:

```Haskell
path :: (Ord a, Ord b) => List a b -> AdjacencyMap a b
```

As for now, the PR is almost merge-ready, only several small notices need fixes.

# [WIP] Part IV. Hopcroft-Karp algorithm for maximum matchings

**Link to the unfinished PR**: [https://github.com/snowleopard/alga/pull/229](https://github.com/snowleopard/alga/pull/229)

This algorithm is the fastest one for maximum matchings in bipartite graphs. The
implementation is rather straightforward.

However, there is an aspect of this PR I'd like to share there.

I implemented the following function:

```Haskell
augmentingPath :: (Ord a, Ord b) => Matching a b
                                 -> AdjacencyMap a b
                                 -> Either (VertexCover a b) (List a b)
```

Given a matching in a graph, it returns either an augmenting path for the
matching or a vertex cover of the same size, thus proving that the given
matching is maximum. As both outcomes can be easily verified, this helps to
write perfect tests that ensure that the matching returned by my function is
maximum indeed.

This PR still needs some work. The reason is that two different implementations
behave weirdly on the benchmarks.

# Results

I wrote a lot of Haskell this summer. This gave me a lot of experience in this
language. Although there's still work to be done, I'm satisfied with the
results I got.

I adore the way functional programs are developed. I was surprised to know how
popular testing (QuickCheck) and benchmarking (Criterion) frameworks are
organized. And preciseness of the documentation makes the work a lot easier.
