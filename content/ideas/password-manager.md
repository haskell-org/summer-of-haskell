---
title: A Password Manager written in Haskell
---

A password manager is a relatively mundane project on the surface, but includes
aspects of cryptography, reliability, safety and security.

The project would use one of the existing crypto libraries like cryptonite for
the cypto code, involve heavy use of property based testing to assert properties
about invariants. It may also be worth looking at the LIO (labelled information
flow control) library for control of how sensitive data (ie the passwords) are
handled within the application.

The project outline is something along the lines of:

1. Research other password managers to decide on and prioritize a feature set.
2. Research the security requirements and possible attacks against password
   managers.
3. Decide on the main components and how they will be implemented.
4. Write the main data structures and functions to operate on them.
5. Write property tests to assert properties on the data types and functions.
6. Implement the UI. The UI can be as simple as a trivial terminal application
   or as complex as storing the password database on cloud storage.

One of the by-products of this project would be an assessment of the suitability
of Haskell as a language for writing security related and cryptographic code.

**Mentors**: Erik de Castro Lopo

**Diffculty**: Beginner
