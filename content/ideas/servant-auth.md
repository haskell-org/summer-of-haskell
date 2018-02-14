---
title: New authentication schemes for servant-auth
---

The [servant-auth](https://github.com/haskell-servant/servant-auth)
packages are a relatively young attempt at providing a definitive
answer to any authentication needs for dealing with protected web
applications using [servant](https://haskell-servant.readthedocs.io/), a fairly
popular set of libraries for serving web applications, querying them and more.
The servant-auth packages already have a sufficiently general infrastructure to
support about any authentication scheme one might be interested in but only
offer JSON Web Tokens (JWT) and basic authentication out of the box at the moment.

One interesting project that could have a quite significant impact
would be to dedicate an entire summer to the implementation of
a few other essential authentication schemes (OAuth is a good
example, but would not fill an entire summer). A decent starting point to figure
out what already exists (in other packages or ecosystems) is
[this hackage search](https://hackage.haskell.org/packages/search?terms=servant+auth)
for the existing servant authentication solutions
and perhaps [this article](https://onehundred15.wordpress.com/2015/06/20/web-authentication-schemes/)
for a list of common authentication schemes.

Besides OAuth, we do not have a fixed list of authentication schemes to consider
so prospective students should feel free to talk to us, the haskell community and do a bit of
research in order to come up with a list of authentication schemes that they would
like to implement during the summer.

The end goal of this project would be to have 2-3 new authentication schemes
(or more of course) implemented in servant-auth, with reasonable haddocks,
some tests. The student could optionally also (co-?)author
[cookbook recipes](https://haskell-servant.readthedocs.io/en/stable/cookbook/index.html)
illustrating how to serve or query APIs that are protected by the newly
supported authentication schemes, therefore making the student's work easily
discoverable by current and future servant users. All in all, by the end of the
summer, _servant-auth_ would not just be an attempt at solving the authentication
problem with servant anymore, it would finally be _the_ definitive solution.

**Mentors**: Alp Mestanogullari (co-mentors: Julian Arni & Oleg Grenrus)

**Difficulty**: Intermediate
