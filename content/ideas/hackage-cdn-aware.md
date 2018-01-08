---
title: Make Hackage CDN-aware
---

We have speed and bandwidth issues with the hackage package repository due to
needing to disable the CDN for too many pages.  This is because when the CDN is
on, it caches things people don't expect -- in particular, things that can be
updated due to user action.

There are utility functions in the hackage codebase to teach each page to send
proper cache-control headers to keep the CDN from serving stale content.
However, they aren't used carefully and uniformly.

Additionally, the CDN interferes with our ability to collect download statistics.

This would be a two phase project:

1.  Annotate hackage pages carefully to ensure that the CDN doesn't cause
    confusion with regards to updates to pages.

2.  Design a solution to both allow caching of package downloads and also
    collect granular statistics.  One possibility is to serve downloads via
    redirects, with the redirect always being hit, and the redirected-to `.tgz`
    file being cached.

**Mentors**: Gershom Bazerman, Herbert Valerio Riedel
**Difficulty**: Intermediate
