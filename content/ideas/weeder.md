title: 'Teaching Weeder about type class instances'
---

[Weeder](https://hackage.haskell.org/package/weeder) is a tool to help Haskell programs remove unused code from their programs. By analyzing `.hie` files, a dependency graph between functions can be built, and a final traversal allows us to identify nodes that are unreachable from entry points.

A big problem with the current approach is that weeder is unaware about type class instances. The current "solution" to this problem is to simply mark every type class instance a root (so it's never flagged as code to be deleted), but this leads to false negatives in weeder's analyis.

In this project, weeder will be extended to incorporate type class information into the dependency graph. Recent GHC additions have already added most of this information into `.hie` files, but there are a few remaining bits of information that are lacking.

This project will require extending weeder to look at this type class information, and to work with GHC developers to add the final information to `.hie` files.

For more information, please contact [ollie@ocharles.org.uk](mailto:ollie@ocharles.org.uk).

**Mentor**: [Ollie Charles](https://ocharles.org.uk)

**Difficulty**: Medium

**Size**: 130 hours
