---
title: 'Student Blog: Testing Bipartiteness with Monad Transformers'
author: 'Vasily Alferov'
---

I am a student at Summer of Haskell this year and this is my second post on
this platform. In my previous
[post](https://summer.haskell.org/news/2019-05-29-alga-introduction.html) I
gave a brief explanation of my task. Now that I finished the "routine"
part of adding the necessary data types and manipulation functions, I'm here to
tell you about my implementation of the algorithm for testing bipartiteness of
graphs.

A graph is called bipartite if its vertices can be split into two parts in
such way that there are no edges inside one part. While testing graph on
tripartiteness is NP-hard, there is a linear algorithm that tests graph on
bipartiteness and restores the partition.

# Vertex On Your Side

The algorithm is usually one of the first graph algorithms given in any
university course. The idea is rather straightforward: we try to assign
vertices to the left or right part in some way, and when we get a conflict, we
claim that the graph is not bipartite.

First, we assign some vertex to the left part. Then, we can confidently
say that all neighbours of this vertex should be assigned to the right part.
Then, all neighbours of this vertex should be assigned to the left part, and so
on. We continue this until all the vertices in the connected component are
assigned to some part, then we repeat the same action on the next connected
component, and so on.

If there is an edge between vertices in the same part, one can easily find an
odd cycle in the graph, hence the graph is not bipartite. Otherwise, we have
the partition, hence the graph is bipartite.

There are two common ways of implementing this algorithm in linear time: using
[Depth-First Search](https://en.wikipedia.org/wiki/Depth-first_search) or
[Breadth-First Search](https://en.wikipedia.org/wiki/Breadth-first_search).
We usually select DFS for this algorithm in imperative languages. The reason is
that DFS implementation is a little bit simpler. I selected DFS, too, as a
traditional way.

So, now we came to the following scheme. We go through the vertices in DFS
order and assign them to parts, flipping the part when going through an edge.
If we try to assign some vertex to some part and see that it is already
assigned to another part, then we claim that the graph is not bipartite. When
all vertices are assigned to parts and we've looked through all edges, we have
the partition.

# The Purity Turned Upside Down

In Haskell, all computations are supposed to be _pure_. Still, if it was
*really* so, we wouldn't be able to print anything to the console. And what I
find most funny about pure computations is that they are so lazy that there is
no pure reason to compute anything.

Monads are the Haskell way to express computations with *effects*. I'm not
going to give a complete explanation of how they work here, but I find
[this one](http://learnyouahaskell.com/a-fistful-of-monads) very nice and
clear.

What I **do** want to notice there is that while some monads, like `IO`, are
implemented through some deep magic, others have simple and pure
implementations. So the entire computation in these monads is pure.

There are many monads that express all kinds of effects. It is a very beautiful
and powerful theory: they all implement the same interface. We will talk about
the three following monads:

* `Either e a` — a computation that returns value of type `a` or throws an
  error of type `e`. The behaviour is very much like exceptions in imperative
  languages and the errors may be caught. The main difference is that this monad
  is fully logically implemented in the standard library, while in imperative
  languages it is usually implemented by the operating system or virtual machine.
* `State s a` — a computation that returns value of type `a` and has an access
  to a modifiable state of type `s`.
* `Maybe a`. A `Monad` instance for `Maybe` expresses a computation that can be
  at any moment interrupted with returning `Nothing`. But we will mostly speak
  of `MonadPlus` instance, which expresses a vice versa effect: this is a
  computation which can be at any moment interrupted with returning a concrete
  value.

# The Monad Where It Happens

We have two data types, `Graph a` and `Bigraph a b`, first of them representing
graphs with vertex labels of type `a` and second representing bipartite graphs
with left part labels of type `a` and right part labels of type `b`.

**A Word of Warning**: These are not Alga data types. Alga representation for
bipartite graphs is not yet released and there is no representation for
undirected graphs.

We also assume that we have the following functions.

```Haskell
-- List of neighbours of a given vertex.
neighbours :: Ord a => a -> AM.AdjacencyMap a -> [a]

-- Convert a graph with vertices labelled with their parts to a bipartite
-- graph, ignoring the edges within one part.
toBipartiteWith :: (Ord a, Ord b, Ord c) => (a -> Either b c)
                                         -> Graph a
                                         -> Bigraph b c

-- List of vertices
vertexList :: Ord a => AM.AdjacencyMap a -> [a]
```

Now we write the definition for the function we are going to implement.

```Haskell
type OddCycle a = [a]
detectParts :: Ord a => Graph a -> Either (OddCycle a) (Bigraph a a)
```

It can be easily seen that the odd cycle is at the top of the recursion stack
in case we failed to find the partition. So, in order to restore it, we only
need to cut everything from the recursion stack before the first occurrence of
the last vertex.

We will implement a Depth-First Search, while maintaining a map of part
identifiers for each vertex. The recursion stack for the vertex in which we
failed to find the partition will be automatically restored with the `Functor`
instance for the monad we choose: we only need to put all vertices from the
path into the result on our way back from the recursion.

The first idea is to use the `Either` monad, that fits perfectly well to our
goals. The first implementation I had was something very close to that. In
fact, I had five different implementations at some point to choose the best,
and I finally stopped at another option.

First, we need to maintain a map of effects — this is something about
`State`. Then, we need to stop when we found a conflict. This could be either
`Monad` instance for `Either` or `MonadPlus` instance for `Maybe`. The main
difference is that `Either` has a value to be returned in case of success
while `MonadPlus` instance for `Maybe` only returns a value in case we failed
to find the partition. As we don't need a value because it's already stored in
`State`, we choose `Maybe`. Now, we need to combine two monadic effects, so we
need [monad transformers](https://en.wikibooks.org/wiki/Haskell/Monad_transformers),
which are a way to combine several monadic effects.

Why had I chosen such complicated type? There are two reasons. The first is
that the implementation becomes very similar to one we have in imperative
languages. The second is that I needed to manipulate the value returned in case
of conflict to restore the odd cycle, and this becomes much simpler in `Maybe`.

So, here we go now.

```Haskell
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE ScopedTypeVariables #-}

data Part = LeftPart | RightPart

otherPart :: Part -> Part
otherPart LeftPart  = RightPart
otherPart RightPart = LeftPart

type PartMap a = Map.Map a Part
type OddCycle a = [a]

toEither :: Ord a => PartMap a -> a -> Either a a
toEither m v = case fromJust (v `Map.lookup` m) of
                    LeftPart  -> Left  v
                    RightPart -> Right v

type PartMonad a = MaybeT (State (PartMap a)) [a]

detectParts :: forall a. Ord a => Graph a -> Either (OddCycle a) (Bigraph a a)
detectParts g = case runState (runMaybeT dfs) Map.empty of
                     (Just c, _)  -> Left  $ oddCycle c
                     (Nothing, m) -> Right $ toBipartiteWith (toEither m) g
    where
        inVertex :: Part -> a -> PartMonad a
        inVertex p v = ((:) v) <$> do modify $ Map.insert v p
                                      let q = otherPart p
                                      msum [ onEdge q u | u <- neigbours v g ]

        {-# INLINE onEdge #-}
        onEdge :: Part -> a -> PartMonad a
        onEdge p v = do m <- get
                        case v `Map.lookup` m of
                             Nothing -> inVertex p v
                             Just q  -> do guard (q /= p)
                                           return [v]

        processVertex :: a -> PartMonad a
        processVertex v = do m <- get
                             guard (v `Map.notMember` m)
                             inVertex LeftPart v

        dfs :: PartMonad a
        dfs = msum [ processVertex v | v <- vertexList g ]

        oddCycle :: [a] -> [a]
        oddCycle c = tail (dropWhile ((/=) last c) c)
```

I'll try to explain each of the first four scoped functions: this is the core
of the algorithm.

* `inVertex` is the part of DFS that happens when we visit the vertex for the
  first time. Here, we assign the vertex to the part and launch `onEdge` for
  every incident edge. And that's the place where we hope to restore the call
  stack: if a `Just` is returned from sum edge, we add `v` to the beginning.
* `onEdge` is the part that happens when we visit any edge. It happens twice
  for each edge. Here we check if the vertex on the other side is visited. If
  not, we visit it. Else we check whether we found an odd cycle. If we did, we
  simple return the current vertex as a singleton. The other vertices from the
  path are added at the way back from the recursion.
* `processVertex` checks if the vertex is visited and runs DFS on it if not.
* `dfs` runs `processVertex` on all vertices.

That's it.

# The Story of INLINE

When I first wrote the above code, `action` was not explicitly inlined. Then,
when I was benchmarking different versions of `detectParts` to select the best,
I noticed that on some graphs this version with transformers had a serious
overhead over the version with `Either`. I had no idea of what was going on,
because semantically two functions were supposed to perform the same operations.
And it became even weirder when I ran it on another machine with another
version of GHC and didn't notice any overhead there.

After a weekend of reading GHC Core code, I managed to fix this with one
explicit inline. At some point between GHC 8.4.4 and GHC 8.6.5 they changed the
optimizer in some way that it didn't inline `action`.

This is just a crazy thing about programming I didn't expect to come through
with Haskell. Still, it seems that the optimizers make mistakes even in our
time and it is our job to give them hints of what should be done. For example,
here we knew that the function should be inlined as it is in the imperative
version, and that's a reason to give GHC a hint.

# What Comes Next?

When this patch is merged, I'm going to start implementing Hopcroft-Karp
algorithm. I think the BFS part is going to be rather interesting, so the next
blog post will come in a couple of weeks.
