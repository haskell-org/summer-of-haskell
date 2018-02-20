---
title: 'Quickchecking web APIs'
---

When writing web applications, there are a number of things one has to keep in
mind, independent of the domain of the application, in order to do the job
well. For example, that "Accept" headers are honored; that HTML has a doctype;
that no endpoint takes too long to respond. Learning about these best
practices, remembering to implement them, and testing for them is currently
very time-consuming, since it must be done by every developer and for every
application anew.

This proposal is to develop a tool to check that *any* application, if
appropriately described, satisfies conditions such as these. Already
'servant-quickcheck' does this for 'servant' applications, but in this proposal
we'd extend the reach to applications which have an OpenAPI (Swagger)
description (and perhaps other types of description as well), that indeed need
not even by written in Haskell. (However, since more detailed customization,
and the definition of new conditions or predicates, would happen in Haskell,
this tool might serve, like XMonad, as an introduction to Haskell to many
people.) Some related work in this space already exists: [servant-swagger](https://hackage.haskell.org/package/servant-swagger)
generates Swagger definitions from `servant` types (i.e., the opposite
direction), and Masahiro Yamauchi has added `servant` type generation to the
Swagger tool, though this is a large Java project that would be hard to
distribute, and wouldn't allow for developing annotations to Swagger
descriptions that have meaning specific to this project.

Beyond the development of translation from Swagger definitions to 'servant'
types and of the executable, the project may include defining new common
predicates.

Some relevant background includes:

  [servant-quickcheck](https://hackage.haskell.org/package/servant-quickcheck)
  [Haskell eXchange talk](https://skillsmatter.com/skillscasts/8723-proving-and-testing-with-servant)
  [Swagger codegen tool](https://github.com/swagger-api/swagger-codegen)

**Mentors**: Julian K. Arni

**Difficulty**: Intermediate
