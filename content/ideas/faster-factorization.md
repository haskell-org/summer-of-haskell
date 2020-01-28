---
title: Faster factorization algorithms
---

There is a growing (and coming-of-age) ecosystem of Haskell packages for cryptography, witnessed by increasing number of blockchain and zero knowledge protocols. This project aims to fill one of remaining gaps: state-of-the-art algorithms for [integer factorization](https://en.wikipedia.org/wiki/Integer_factorization).

The most advanced existing Haskell implementations still use integer factorization over elliptic curves ([example](http://hackage.haskell.org/package/arithmoi-0.10.0.0/docs/src/Math.NumberTheory.Primes.Factorisation.Montgomery.html)). But there is a modern family of vastly superior and faster methods of factorization: [number field sieves](https://en.wikipedia.org/wiki/General_number_field_sieve). The goal is to implement them as a separate Haskell library or as a part of [`arithmoi`](http://hackage.haskell.org/package/arithmoi-0.10.0.0) package.

To reach the goal the candidate could implement the [quadratic sieve](https://en.wikipedia.org/wiki/Quadratic_sieve), achieving decent performance characteristics. If there is still time left, we will proceed with the [general number field sieve](https://en.wikipedia.org/wiki/General_number_field_sieve).

The candidate should have a basic knowledge of linear algebra and number theory and be willing to learn more. This project may be a good fit for students with a strong mathematical background, but little practice in Haskell, because it is self-contained and involves neither scary types nor arcane interfaces.

**Mentor**: Andrew Lelechenko.

**Difficulty**: Intermediate.
