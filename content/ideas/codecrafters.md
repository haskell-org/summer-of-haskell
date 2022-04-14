---
title: CodeCrafters courses in Haskell
---

On [CodeCrafters](https://codecrafters.io), one can interactively recreate popular developer tools from scratch, in any language. Programmers enjoy this as a learning exercise (e.g Build your own Git).

The language support module is OSS, and [The Build your own Redis exercise](https://app.codecrafters.io/courses/redis/overview) is available in Haskell, thanks to an [OSS contribution](https://github.com/codecrafters-io/languages/pull/26/files). It's also quite popular. 

Depending on the student's bandwidth, the GSoC project(s) can comprise:

* Add Haskell support for the Git and SQLite exercises. This involves porting the challenge's [starter repository](https://github.com/codecrafters-io/languages/tree/master/starter_templates/git) to use Haskell, and updating its Dockerfile. This exercise is particularly great as a beginner-level, since the [Redis port](https://github.com/codecrafters-io/languages/pull/26/files) serves as a Haskell example, and there are examples supporting other courses in other languages.

* Contribute to the breakdown of more technologies, and creation of new Haskell courses. Some topics requested by our community include Build your own Shell, BitTorrent Client, Blockchain, and Regex Parser, but [more ideas](https://github.com/danistefanovic/build-your-own-x) are absolutely welcome. Depending on the skill-level and interest of the student, they can be involved in breaking down new topics into stages (see [Git overview](https://app.codecrafters.io/courses/git/overview) for reference), or creating a language-agnostic tester repository as per a spec ([example of a very simple stage test](https://github.com/codecrafters-io/git-tester/blob/master/internal/stage_init.go)) — and adding Haskell support.


Opening up more Haskell courses means 1000s of CodeCrafters learners will get to experience and master Haskell, which is great for the ecosystem. 

**Additional notes:** 

**Units**: We have the bandwidth to mentor up to 3 students

**Mentors**: [Sarup Banskota](https://github.com/sarupbanskota), [Rohit Paul Kuruvilla](https://github.com/rohitpaulk)

**Difficulty**: Beginner, Medium

**Size**: Available both as 175 hours, and 350 hours
