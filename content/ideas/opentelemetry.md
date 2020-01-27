---
title: OpenTelemetry support for Haskell
---

# What this project is about

OpenTelemetry is a set of APIs and protocols for instrumenting code, gathering
traces and metrics produced by running that code and analyzing all that data.

Despite being targeted primarily at distributed systems it also can be useful for
non-networked single machine applications like CLI tools and GUI applications.
This is especially important for Haskell since it's rather hard to profile Haskell
applications compared to other languages: separate profiling build is required,
profile visualizer tools don't enjoy hundreds of person-years spent on them.

The [current implementation](https://github.com/ethercrow/opentelemetry-haskell)
of OpenTelemetry for Haskell is in its infancy and needs contributions
to cover all of the OpenTelemetry API and to support all export targets.

# The current state of the library

* Minimal implementation of Trace portion of OpenTelemetry API
* Exporter to a local file in [Chrome Tracing format]()
* WIP: Exporter to [LightStep](), one of the services for analyzing telemetry
  data. Will be functional before GSoC starts and serve as a starting point for
  implementing other exporters.

# Possible tasks for GSoC

* Implement Metrics portion of OpenTelemetry API
* Implement local file exporter for metrics
* Implement LightStep exporter for metrics
* Implement an exporter for another service (Jaeger, Zipkin, Prometheus, etc.)
* Instrument a popular network interaction library such as http-client or
  postgresql-simple

# Who benefits from this project

* Developers of distributed systems which have components implemented in Haskell
* Developers of Haskell applications and libraries that have some sufficiently slow parts
* Indirectly: users of said systems and applications enjoying faster software

**Mentors**: Dmitry Ivanov

**Difficulty**: Any
