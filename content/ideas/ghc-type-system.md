---
title: Implement quantified contexts (or other type system goodies)
---

In last year's Haskell Symposium, Gert-Jan Bottu et al. [described](http://homepages.inf.ed.ac.uk/wadler/papers/quantcc/quantcc.pdf)
a plan for *quantified contexts*, where a user could write a type like `forall h. (forall f. Functor f => Functor (h f)) => h Maybe Int -> h [] Int`. The paper linked above has more realistic examples. The key is that a constraint is actually an implication.

The idea as described in that paper would not jibe well with GHC, as the paper's specification requires backtracking in order to implement. However, a small tweak to what's described in the paper would no longer need backtracking and should be relatively straightforward to implement. The project would be to finish specifying and then implement this proposal.

It will have significant real-world impact, fixing long-standing GHC bug [#2256](https://ghc.haskell.org/trac/ghc/ticket/2256) and allowing `join` to be added to the `Monad` typeclass, among other benefits. (The route from this proposal to `join` is a bit long and goes via roles, but trust me here that this proposal is the blocker.)

Beyond just quantified contexts, I'm happy to mentor students who wish to hack on GHC's type system.
In particular, advances toward dependent
types are strongly encouraged. This might include implementing [one](https://github.com/ghc-proposals/ghc-proposals/pull/54)
[of](https://github.com/ghc-proposals/ghc-proposals/pull/81) [several](https://github.com/ghc-proposals/ghc-proposals/pull/83)
[proposals](https://github.com/ghc-proposals/ghc-proposals/pull/99) posted recently. Ideas beyond those proposals includes merging
the parsers for types and terms, as well as to sort out The Namespace Problem (GHC allows declarations like `data T = T`. How would that
work in a dependently typed language where terms are not syntactically distinct from types?). If you like, you can
see [Richard Eisenberg's thesis](https://repository.brynmawr.edu/cgi/viewcontent.cgi?article=1074&context=compsci_pubs) for
inspiration.

If you can relocate to the Philadelphia, PA, USA, area for the summer, there will be office space you can use, and you'll
be able to work in a space with several other people hacking on GHC. Remote mentorship is also possible, of course.

**Mentor**: [Richard Eisenberg](mailto:rae@cs.brynmawr.edu) (feel free to email to discuss ideas for your proposal)
