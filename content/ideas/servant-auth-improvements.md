---
title: Make servant-auth "open" for defining custom auth schemas
---

The popular and principled web framework [Servant](https://haskell-servant.readthedocs.io/) offers an extensible way to define web APIs as types, which is perhaps unique among web frameworks in any programming language, and this provides a way to build all kinds of related functionality from servers to clients to documentation. As a result, an entire ecosystem of Servant-related libraries have sprung up to solve problems related to web programming.

Since its introduction in 2017, the [servant-auth](https://github.com/haskell-servant/servant-auth) package has seen uptake in the community, but unlike the rest of the Servant ecosystem, `servant-auth` won't let you define your own auth schemas and use them just as you'd use `servant-auth`'s out-of-the-box support for *basic auth* or JWT. Indeed, users have shown interest in Oauth1 and Oauth2 (and, relatedly, OpenIDConnect) in the Servant family of libraries, so if `servant-auth` were open, it should be more straightforward to integrate these and other auth schemas for Servant servers, clients, API documentation, and in other places.

Thus, one potential project could be to open up `servant-auth` and make it extensible in a way similar to Servant itself. After that, a useful further goal could be to implement Oauth1 or another authorization schema using this new extensibility. This would not only be a useful and widely appreciated end result, but it would also offer an example of how to use this new functionality in the project. The end goal of this effort would be to increase the flexibility and freedom end-users have to implement their own auth schemas in `servant-auth`, along with reasonable haddocks, and some tests for the new functionality as well.

The student could optionally also (co-?)author [cookbook recipes](https://haskell-servant.readthedocs.io/en/stable/cookbook/index.html)
illustrating how to serve or query APIs that are protected by the newly supported authentication schemes, or cookbooks on how to implement new auth schemas using the new functionality made available in `servant-auth`, and this would make the student's work easily discoverable by current and future servant users.

By the end of the summer, _servant-auth_ would move closer to its goal of being _the_ definitive auth solution for Servant and provide Servant users with even more tools to fully realize the goals of their applications.

 **Mentor**: Alp Mestanogullari

 **Difficulty**: Intermediate
