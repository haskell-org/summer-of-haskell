---
title: Hack on GHC's type system (e.g., implement quantified constraints)
---

Despite the leaps and bounds GHC's type system has grown by recently, there is yet more work to do. This project "idea"
is an umbrella for any GHC type system improvements. One concrete idea is to refine and implement quantified class constraints,
as originally specified in [this paper](http://homepages.inf.ed.ac.uk/wadler/papers/quantcc/quantcc.pdf). Other ideas
are welcome, but proposals should be backed by solid theory to be considered strongly. In particular, advances toward dependent
types are strongly encouraged. This might include implementing [one](https://github.com/ghc-proposals/ghc-proposals/pull/54)
[of](https://github.com/ghc-proposals/ghc-proposals/pull/81) [several](https://github.com/ghc-proposals/ghc-proposals/pull/83)
[proposals](https://github.com/ghc-proposals/ghc-proposals/pull/99) posted recently. Ideas beyond those proposals includes merging
the parsers for types and terms, as well as to sort out The Namespace Problem (GHC allows declarations like `data T = T`. How would that
work in a dependently typed language where terms are not syntactically distinct from types?). If you like, you can
see [Richard Eisenberg's thesis](https://repository.brynmawr.edu/cgi/viewcontent.cgi?article=1074&context=compsci_pubs) for
inspiration.

If you can relocate to the Philadelphia, PA, USA, area for the summer, there will be office space you can use, and you'll
be able to work in a space with several other people hacking on GHC.

**Mentor**: [Richard Eisenberg](mailto:rae@cs.brynmawr.edu) (feel free to email to discuss ideas for your proposal)
