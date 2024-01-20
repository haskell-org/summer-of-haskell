---
title: 'Summer of Haskell 2023 Results'
author: 'Aaron Allen'
---

On behalf of the Haskell.org committee, I'm pleased to announce the results of
the Summer of Haskell 2023. Many impressive and valuable contributions were
made to the Haskell ecosystem which I'm excited to share with you in this post.
I'd like to extend a big thank you to the sponsors that made this program
possible: [The Haskell Foundation](https://haskell.foundation/),
[Kadena](https://www.kadena.io/), [Jane Street](https://www.janestreet.com/),
[Holmusk](https://www.holmusk.com/), [MLabs](https://mlabs.city/),
[Flipstone](https://flipstone.com/), Gershom Bazerman, and Edward Kmett.
Gratitude is also due to the wonderful mentors who kindly donated their time to
helping bring these projects to fruition and fostering the next generation of
Haskellers.

I also want to mention that [we are currently in need of idea
submissions](https://summer.haskell.org/ideas.html) for the upcoming Google
Summer of Code 2024! This program depends on having a quality list of ideas, so
please consider submitting any you might have (ideally before Feb. 4th).

Without further ado, what follows is a summary of the work that was completed
under the Summer of Haskell 2023.

---

<table>
    <tr><td><b>Project</b></td><td>Support for Resolve Functionality in HLS</td></tr>
    <tr><td><b>Contributor&nbsp;</b></td><td>Nathan Maxson</td></tr>
    <tr><td><b>Mentor</b></td><td>Michael Peyton Jones</td></tr>
</table>

Nathan Maxson contributed support for [resolve
functionality](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#codeAction_resolve)
to [HLS](https://haskell-language-server.readthedocs.io/en/latest/#). He has
also updated a number of HLS plugins to utilize this functionality, thus
reducing CPU and memory usage and improving speed. The plugins that have been
updated in this way are `overloaded-record-dot`, `hlint-plugin`,
`explicit-imports`, `refine-imports`, `type-lenses`, `explicit-records`, and
`class-plugin`.

<b>Relevant code contributions</b>

* <https://github.com/haskell/haskell-language-server/pull/3621>
* <https://github.com/haskell/haskell-language-server/pull/3678>
* <https://github.com/haskell/haskell-language-server/pull/3688>
* <https://github.com/haskell/haskell-language-server/pull/3658>
* <https://github.com/haskell/haskell-language-server/pull/3679>
* <https://github.com/haskell/haskell-language-server/pull/3682>
* <https://github.com/haskell/haskell-language-server/pull/3729>
* <https://github.com/haskell/haskell-language-server/pull/3743>
* <https://github.com/haskell/haskell-language-server/pull/3750>
* <https://github.com/haskell/haskell-language-server/pull/3769>

---

<table>
    <tr><td><b>Project</b></td><td>Cabal File Support for HLS</td></tr>
    <tr><td><b>Contributor&nbsp;</b></td><td>Jana Chadt</td></tr>
    <tr><td><b>Mentor</b></td><td>Fendor</td></tr>
</table>

Jana Chadt worked on improving support for Cabal files in HLS. The work has
been summarized in [this
gist](https://gist.github.com/VeryMilkyJoe/268448ff8daea9f467930c771e60b9c8),
which includes links to relevant PRs and issues. There is also [a blog
post](https://discourse.haskell.org/t/hsoc-hls-cabal-file-support/7331)
detailing the new HLS functionality.

<b>Relevant code contributions</b>

* <https://github.com/haskell/vscode-haskell/pull/618>
* <https://github.com/haskell/haskell-language-server/pull/3268>
* <https://github.com/haskell/haskell-language-server/pull/3766>
* <https://github.com/haskell/haskell-language-server/pull/3761>
* <https://github.com/haskell/haskell-language-server/pull/3778>

---

<table>
    <tr><td><b>Project</b></td><td>HLS: Goto 3rd Party Definition</td></tr>
    <tr><td><b>Contributor&nbsp;</b></td><td>Elodie Lander</td></tr>
    <tr><td><b>Mentor</b></td><td>Zubin Duggal</td></tr>
</table>

Elodie Lander worked on allowing the HLS goto definition functionality to work
with definitions from outside of the current project. Although primarily
focused on HLS, this work involves contributions to other key Haskell
infrastructure: GHC, Cabal, HieDb, and haskell/actions.

<b>Relevant code contributions</b>

* <https://github.com/haskell/haskell-language-server/pull/3676>
* <https://github.com/haskell/haskell-language-server/pull/3725>
* <https://github.com/haskell/haskell-language-server/pull/3749>
* <https://github.com/wz1000/HieDb/pull/57>
* <https://github.com/wz1000/HieDb/pull/56>
* <https://github.com/wz1000/HieDb/pull/55>
* <https://github.com/wz1000/HieDb/pull/60>
* <https://github.com/haskell/cabal/pull/9019>
* <https://github.com/haskell/cabal/pull/9244>
* <https://gitlab.haskell.org/ghc/ghc/-/merge_requests/11083>
* <https://github.com/haskell/actions/pull/290>

---

<table>
    <tr><td><b>Project</b></td><td>Standardize GHC's Error Dump in JSON Format</td></tr>
    <tr><td><b>Contributor&nbsp;</b></td><td>Ben Bellick</td></tr>
    <tr><td><b>Mentor</b></td><td>Aaron Allen</td></tr>
</table>

Ben Bellick contributed a new [well-defined JSON interface for GHC diagnostic
emissions](https://github.com/benbellick/tech-proposals/blob/specify-json-dump/proposals/0000-specify-dump-json.md),
which will be available via a new `-fdiagnostics-as-json` flag. The existing
under-specified `-ddump-json` flag has been deprecated in favor of this new
interface. Additionally, Ben made valuable contributions to the effort of
converting GHC error messages to use the new structured representation.

<b>Relevant code contributions</b>

* <https://gitlab.haskell.org/ghc/ghc/-/merge_requests/11093>
* <https://gitlab.haskell.org/ghc/ghc/-/merge_requests/10574>

---

<table>
    <tr><td><b>Project</b></td><td>Teaching Weeder About Type Classes</td></tr>
    <tr><td><b>Contributor&nbsp;</b></td><td>Vasily Sterekhov</td></tr>
    <tr><td><b>Mentor</b></td><td>Oliver Charles</td></tr>
</table>

Vasily Sterekhov implemented support for detecting unused type class instances
in [Weeder](https://github.com/ocharles/weeder?tab=readme-ov-file#weeder),
along with several other significant improvements. See the [Weeder 2.7 release
notes](https://discourse.haskell.org/t/weeder-2-7-released-with-type-class-instances-and-more/7356)
for details.

<b>Relevant code contributions</b>

* <https://github.com/ocharles/weeder/pull/126>
* <https://github.com/ocharles/weeder/pull/133>
* <https://github.com/ocharles/weeder/pull/136>
* <https://github.com/ocharles/weeder/pull/132>
* <https://github.com/ocharles/weeder/pull/137>
* <https://github.com/ocharles/weeder/pull/134>
* <https://gitlab.haskell.org/ghc/ghc/-/merge_requests/10701>

---

<table>
    <tr><td><b>Project</b></td><td>Structured Errors for cabal-install</td></tr>
    <tr><td><b>Contributor&nbsp;</b></td><td>Suganya Arun</td></tr>
    <tr><td><b>Mentor</b></td><td>Gershom Bazerman</td></tr>
</table>

Suganya Arun implemented structured errors for Cabal, including the assignment
of a unique code to each error which can be then be referenced on the [Haskell
Error Index](https://errors.haskell.org/). You can read more about the results
and challenges of the project in [this blog
post](https://summerofhaskellstructerrors.blogspot.com/2023/10/soh2023-structured-errors-and-error.html).

<b>Relevant code contributions</b>

* <https://github.com/haskell/cabal/pull/9018>
* <https://github.com/haskell/cabal/pull/9143>
* <https://github.com/haskell/cabal/pull/9162>
* <https://github.com/haskell/cabal/pull/9191>
* <https://github.com/haskell/cabal/pull/9219>
* <https://github.com/haskell/cabal/pull/9276>
* <https://github.com/haskell/cabal/pull/9324>

---

<table>
    <tr><td><b>Project</b></td><td>Maximally Decoupling Haddock and GHC</td></tr>
    <tr><td><b>Contributor&nbsp;</b></td><td>Gregory Baimetov</td></tr>
    <tr><td><b>Mentor</b></td><td>Laurent P. Rene de Cotret</td></tr>
</table>

Gregory Baimetov contributed to the effort towards [decoupling GHC and
Haddocks](https://github.com/haskellfoundation/tech-proposals/pull/44).
Although the original goal proved to be too ambitious, he has produced a
[prototype of a JSON serialization for the Haskell
AST](https://github.com/Greg8128/proto-docser-hs) as well as a [document
explaining the difficulties
encountered](https://docs.google.com/document/d/1nykZgSi9k_jP1N4ZVZhSdce2jFpRdwNNT3X2YQLF9vo),
which should be of value to future work on this issue.

---

<table>
    <tr><td><b>Project</b></td><td>Representing Pattern</td></tr>
    <tr><td><b>Contributor&nbsp;</b></td><td>Saachi Kaup</td></tr>
    <tr><td><b>Mentor</b></td><td>Alex Mclean</td></tr>
</table>

Saachi Kaup worked with various libraries to explore pattern visualization,
drawing connections to the traditional mandalas common in Southeast Asian art.
She put together [a blog post on the Tidal
website](https://tidalcycles.org/blog/blog_topic_mandalas) describing her
process and showcasing some of the images that were produced. You can also view
the [code repository](https://gitlab.com/Saachi_Kaup/TurtlePatterns).
