---
title: Parquet for Haskell - A production-grade Apache Parquet reader/writer.
---

Apache Parquet is the "interchange format" for analytics in the modern data stack, so having a production-grade Parquet implementation in Haskell is what turns Haskell data tooling from a silo into something that plugs into how data is actually stored and moved in industry. Having a strong Parquet implementation benefits Haskell beyond "data science libraries" because it gives any Haskell project a modern, efficient, interoperable storage format for tabular and semi-structured data: fast column scans, good compression/encodings, and a widely-supported on-disk standard that other tools can immediately consume. In practice, this means Haskell apps can persist intermediate results, caches, feature stores, logs/telemetry aggregates in a format that scales and can be queried/validated with existing industry tools, instead of inventing bespoke binary formats or round-tripping through another language.

[`dataframe`](https://github.com/mchav/dataframe) already ships a working Parquet reader and includes a growing Parquet implementation. This project makes Parquet a **first-class, production-ready I/O format inside `dataframe`**, by:

1. hardening and extending the existing reader to handle more real-world files safely,
2. implementing a streaming Parquet writer
3. writing round trip tests for Parquet files
4. documenting a clear support matrix and performance expectations (which will eventually be added to the [Parquet implementation status page](https://parquet.apache.org/docs/file-format/implementationstatus/))

The work is spec-driven (Parquet file format + metadata + encodings) but deliberately scoped to ship high-quality improvements within the GSoC timeline.

The project is at least medium difficulty (~175 hours). Hardening the reader and shipping a writer with plain encoding is a moderately difficult task. It can be extended to a ~350 hour project if we extend the scope to supporting run length encoding and a streaming writer/reader.

**Mentorship**

- Michael Chavinda (mchav)
- Adithya Obilisetty (adithyaov)
