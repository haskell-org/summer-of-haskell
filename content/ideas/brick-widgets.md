---
title: Implement more library widgets for brick
---
[`brick`](https://hackage.haskell.org/package/brick) is a library for writing
terminal user interfaces in Haskell. Users compose interfaces using high-level
combinators in order to create complicated interfaces.

A widget is a subcomponent of a user interface. A widget can be rendered, has
an internal state and can respond to events. The library already provides several
widget types including drop down menus, a file browser, text entry and so on but
users writing their own applications will invariably find that they have to
implement their own widget at some point.

Examples can be found in already existing applications

1. [`gitlab-triage`](https://github.com/mpickering/gitlab-triage)
implements a lazily loaded list which requests additional elements by HTTP requests.
2. `gitlab-triage` implements an autocomplete dialog which combines together a text-field and a list.
3. [`purebred`](https://github.com/purebred-mua/purebred) is a complicated application with several widgets.

The goal of the project is to implement more widgets in a library which can
be reused in other applications.

A successful proposal should specify an idea for at least four different types
of widget to implement. It could be possible to start with extracting existing widgets
from previously mentioned projects but by the end of the project the student should
be implementing their own widgets from scratch.


**Potential Mentors**: Jonathan Daugherty

**Difficulty**: Beginner/Intermediate
