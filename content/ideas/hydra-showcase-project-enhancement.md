---
title: "New heads for Hydra": enhansing the framework for real world apps
---

## Hydra showcase project

The [Hydra][hydra] project is aimed to be a showcase for Software Design practices,
and application architectures, best practices and patterns of building big,
complex applications in Haskell. This framework is a full-fledged solution
for creating web-services, console and standalone applications. Applications may use
several subsystems out of the box: SQL DB (3 different SQL backends with [beam][beam]),
KV DB (2 different KVDBs), STM-like multithreading and concurrency,
logging and many other features.

Hydra is a framework which currently provides three independent engines
having the same functionality. This allows your to compare three different approaches
in terms of impact to the application architecture, usability, performance,
code structure and design decisions.

The following independent engines are implemented:

* (Hierarchical) Free Monads
* (Hierarchical) Church-Encoded Free Monads
* Final Tagless (mtl)

The Hydra project also provides several demo applications and a testing framework.

The Hydra project is a showcase project for the book ["Functional Design and Architecture"][book].

## Tasks

The framework can be improved in many ways.

* Synchronizing functionality between engines. Currently, the Free Monad based engine
  supports more features than other two engines.
  
  Task 1: Port functionality from the Free Monad engine into the Church Encoded Free Monad engine.

  **Difficulty:** Beginner (the code will be almost identical)
  
  Task 2: Port functionality from the Free Monad engine into the Final Tagless engine.

  **Difficulty:** Advanced (requires some advanced type level programming)

* Adding more features into the framework.

  The framework can be enhanced by adding several new subsystems: File System, Time, TCP/UDP,
  JSON-RPC, ...

  **Difficulty:** From Beginner to Advanced
  
* Improving demo applications. Demo applications can be extended and improved to better demonstrate
  the approaches and ideas of Software Design.
  
  - Task 1: Showcase app for servant-based web server and client
  - Task 2: Showcase app for SQL interactions 
  - Task 3: Showcase app for havily concurrent and multithreaded calculations
  - Task 4: Showcase app for command-line tool working with user input

  **Difficulty:** Intermediate, Advanced

* Improving documentation. Currenlty, the approaches in the framework are the best described
  among other Haskell approaches due to the book "Functional Design and Architecture"
  and other materials (articles, talks). Still, a lot of additional materials
  and documentation is needed.

This project should be appropriate for a Haskell programmers who is willing to learn
best practices in Haskell, and who wants to contribute into the community by creating
showcases, demo applications and a better documentation.

These techniques are used in real production with great success.
Using the ideas from the book and showcase projects, the following frameworks have been implemented
in Juspay and Enecuum:

* [PureScript Presto][presto], [PureScript Presto.Backend][presto-backend], Juspay
* Two more private frameworks for Juspay
* [Node][node], Enecuum

So the implementors will get a real knowledge useful in their careers. The implementors
will be mentioned on the official [web page][book] of the book.

**Mentor**: Alexander Granin

**Difficulty**: Beginner, Intermediate, Advanced

[hydra]: https://github.com/graninas/Hydra
[book]: https://graninas.com/functional-design-and-architecture-book/
[beam]: https://tathougies.github.io/beam/
[presto]: https://github.com/juspay/purescript-presto
[presto-backend]: https://github.com/juspay/purescript-presto-backend
[node]: https://github.com/graninas/Node
