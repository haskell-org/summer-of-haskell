---
title: 'Haskell.org GSoC results for 2018'
author: 'Jasper Van der Jeugt'
---

Hey all,

Google Summer of Code 2018 is officially over.  The
[Haskell.org](http://haskell.org) organisation had a very productive year with
17 accepted projects out of which 15 were successful.  We would like to thank
the students and mentors for the great summer, and, of course, Google for its
generous support towards the open source community.

Before we get into the summary of this year, we'd like to bring attention to the
fact that we will soon start preparing for GSoC 2019.  This means we will be
looking for:

- *Project ideas*: Even if you are not interested in participating yourself,
  maybe you have some ideas about what a student could hack on to improve the
  Haskell ecosystem.  If that is the case, please submit a PR against
  [this repo](https://github.com/haskell-org/summer-of-haskell) or just shoot us
  an email.

- *Mentors*: If you are interested in mentoring a student throughout the summer,
  feel free to contact us.  You do not need a specific project idea -- anyone
  with some Haskell experience willing to help others is welcome.

- *Students*: If you are thinking about applying to Haskell.org next year, it's
  never too early to look for interesting projects.

Please [reach out to us](/contact.html) if you are interested in any of the
above!

# Visual Tools and Bindings for Debugging in Code World

Student: Krystal Maughan  
Mentors: Chris Smith, Gabriel Gonzalez  
Blog: <https://kammitama5.github.io/>

This project was successful.  Things got off to a slow start, but once Krystal
got going, she tackled some projects with a lot of impact and benefits for users.
You can find a good overview in
[her blogpost](https://medium.com/@krystal.maughan/breaking-the-space-time-barrier-with-haskell-time-traveling-and-debugging-in-codeworld-a-google-e87894dd43d7).

# Help Hadrian

Student: Chitrak Raj Gupta  
Mentors: Andrey Mokhov, Moritz Angermann

This project unfortunately did not pass the first evaluation.

# Add support for deprecating exports

Student: alanas  
Mentors: Matthew Pickering, Erik de Castro Lopo

This project was successful.  It looks like deprecated exports will be arriving
in GHC 8.8 thanks to alanas's efforts this summer.  He wrote a blogpost about
[his experience](https://medium.com/@alanas.pla/my-gsoc-2018-experience-689e1368cf61)
as well.

# Hi Haddock

Student: Simon Jakobi  
Mentors: Herbert Valerio Riedel, Alex Biehl  
Blog: <https://sjakobi.github.io/>

This project was successful.  An initial version of the `:doc` command made it
into GHC-8.6, and Simon made many improvements to the Haddock internals.  You
can read more about it in
[his blogpost](https://sjakobi.github.io/blog/2018/08/14/hi-haddock-3/).

# Improving the GHC code generator

Student: Abhiroop Sarkar  
Mentors: Carter Schonwald, Ben Gamari

This project was successful.  Because of the complexity of the compiler work
relative to this students familiarity, the code hasn't been merged in yet and
still needs a lot of cleanup and iterating.  However, Abhiroop intends to
continue working on this project with the Haskell and GHC community for the next
few months.  You can read Abhiroop's summary
[here](https://gist.github.com/Abhiroop/9a2600f24f8139b7fc0742a2b4585bb3).

# Crucible: A Library for In-Memory Data Analysis in Haskell

Student: Gagandeep Bhatia  
Mentors: Marco Zocca, Andika D. Riyandi

This project was successful.  Together with Gagandeep, we made some changes to
the goals of this project initially and decided to have him target existing
libraries rather than doing a greenfield project.  He ended up making a number
of good contributions to the [Data Haskell](http://www.datahaskell.org/)
ecosystem, and the [Frames](https://hackage.haskell.org/package/Frames) library
in particular.  He also wrote a wrap-up which you can read
[here](https://www.gagandeepbhatia.com/blog/gsoc-2018-wrap-up-haskell-dataframes-postgres-type-providers-and-more/).

# Dependently Typed Core Replacement in GHC

Student: Ningning Xie  
Mentors: Richard Eisenberg

This project was successful.  Ningning writes:

> It was an excellent experience for me to complete GSoC 2018 with Haskell.org.
> During these three monthes, I got the chance to dive into the state of the art
> compiler for Haskell programming language, GHC, with the help from my mentor
> and the broader community.
>
> I chose the project because dependent types are one of my major research
> interests. And indeed I gained a lot from it. Firstly, the project was
> challenging, and working on such a huge codebase sounded frightening, but I
> managed to make progress and get lots of fun from it.  I have learned a lot
> during this summer, which includes not only Haskell skills, but also many
> design principles inside GHC.

More details are available in her
[in-depth report](https://xnning.github.io/papers/gsoc-report.pdf).

# Benchmarking graph libraries and optimising algebraic graphs

Student: Alexandre Moine  
Mentors: Andrey Mokhov, Alois Cochard  
Blog: <https://blog.nyarlathotep.one/>

This project was successful.  Alexandre worked on a variety of tasks, including
benchmarking, optimisations, testing and even correctness proofs.
[His blogpost has more details](https://blog.nyarlathotep.one/2018/08/gsoc-results/).

# Improvements to GHC's compilation for conditional constructs.

Student: Andreas Klebinger  
Mentors: José Calderón, Joachim Breitner, Ben Gamari

This project was successful.  Andreas
[posted this gist](https://gist.github.com/AndreasPK/c4a6d8b5f199215ea7747d98d0f65de4)
including some _very impressive_ numbers.  Some patches that he worked on this
summer have already been merged into GHC, and it looks the bulk of his work will
also be merged soon.

# Support for Multiple Public Libraries in a .cabal package

Student: Francesco Gazzetta (@fgaz)  
Mentors: Mikhail Glushenkov, Edward Yang

This project was successful.  Francesco delivered great work just like last
year and it sounds like this will be merged into the Cabal library soon.  He
put together a
[final report here](https://github.com/fgaz/gsoc/blob/master/2018/final-report.md).

# Functional test framework for the Haskell IDE Engine and Language Server Protocol Library

Student: Luke Lau  
Mentors: Alan Zimmerman  
Blog: <https://lukelau.me/haskell/>

This project was successful.  Luke wrote
[a bit about the project here](https://lukelau.me/haskell/posts/lsp-test/).
About his experience, he writes:

> I had very little “real world” Haskell experience before starting, and there’s a
> lot of stuff they don’t teach you in university. But both my mentor and the
> Haskell community were extremely helpful with getting me up to speed and
> answering my many questions. Especially the #haskell channel on Freenode! In a
> lot of IRC channels you can find yourself asking question and never being
> answered, but the people at the Haskell channel were very eager to help and
> explain/discuss lots of different topics.

# Native-Metaprogramming Reloaded

Student: Shayan Najd  
Mentors: Ben Gamari, Alan Zimmerman

This project was successful.  Shayan made significant progress to the
trees-that-grow fork of GHC, and has a lot of patches ready to merged and
reviewed.  The mentors are very positive about the approach.
Shayan's summary [can be found here](https://github.com/shayan-najd/HsAST/blob/master/Report).

# Format-Preserving YAML

Student: Wisnu Adi Nurcahyo  
Mentors: Tom Sydney Kerckhove, Jasper Van der Jeugt  
Blog: <https://medium.com/@nurcahyo>

This project unfortunately did not pass the second evaluation.

# Enhancing the Haskell Image Processing Library with State of the Art Algorithms

Student: khilanravani  
Mentors: Alp Mestanogullari

This project was successful.  Khilan made several contributions to the
[Haskell Image Processing](https://github.com/lehins/hip) library.
You can see some cool examples of the various algorithms in the
[his wrap-up blogpost](https://medium.com/@khilanravani/image-processing-gsoc18-with-haskell-84177cec618).

# Making GHC Tooling friendly

Student: Zubin Duggal  
Mentors: Ben Gamari, Gershom Bazerman, Joachim Breitner

This project was successful.  Zubin's patches have not been merged yet but
should be in the next few months.  His final report
[can be found here](https://gist.github.com/wz1000/5ed4ddd0d3e96d6bc75e095cef95363d).

# Helping cabal new-build become just cabal build

Student: Alexis Williams  
Mentors: Herbert Valerio Riedel, Mikhail Glushenkov

This project was successful.  Alexis contributed key features to Cabal's
new-build infrastructure and also fixed an impressive amount of bugs.
She writes about
[her experience here](https://typedr.at/posts/what-i-did-on-my-summer-vacation/).

# Parallel Automatic Differentiation

Student: Andrew Knapp  
Mentors: Sacha Sokoloski, Trevor L. McDonell, Edward Kmett, Alois Cochard

This project was successful.  Despite being an _extremely_ hard topic to tackle,
Anrew was able to get some
[impressive preliminary results](https://ajknapp.github.io/2018/08/14/notomatic-differentiation.html).
These lay out a very good foundation for future work that could be very valuable
to the Haskell community.

---

We would like to thank all the participants again for the great summer and we
already look forward to the next one!
