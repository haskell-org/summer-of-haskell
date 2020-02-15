---
title: OpenTelemetry support for Haskell
---

# What this project is about

[OpenTelemetry](https://opentelemetry.io/) is a set of APIs and protocols for instrumenting code, gathering
traces and metrics produced by running that code and analyzing all that data.

Despite being targeted primarily at distributed systems it also can be useful for
non-networked single machine applications like CLI tools and GUI applications.

# Why Haskell should support OpenTelemetry

Supporting a language-agnostic format like OpenTelemetry is important for Haskell
because the profiling story is rather immature compared to other languages:

  * Tools for visualizing profile data like ThreadScope and ghc-events-analyze didn't enjoy hundreds of person-years spent on them
  * Haskell code needs to be rebuilt with profiling support
  * But that might affect some optimizations you'd get a profile of not the thing you are running in production

Instrumentation-based approach allows to have profiling data without recompiling your application and dependencies.

Already existing tools like [Jaeger](https://www.jaegertracing.io/) and
[LightStep](https://lightstep.com) can be used to visualize and explore the
telemetry data.

# The current state of the library

The [current implementation](https://github.com/ethercrow/opentelemetry-haskell)
of OpenTelemetry for Haskell is in its infancy and needs contributions
to cover all of the OpenTelemetry API and to support all export targets.

* Minimal implementation of Trace portion of OpenTelemetry API
* Exporter to a local file in [Chrome Tracing format](https://docs.google.com/document/d/1CvAClvFfyA5R-PhYUmn5OOQtYMH4h6I0nSsKchNAySU/preview)
* WIP: Exporter to LightStep, one of the services for analyzing telemetry
  data. Will be functional before GSoC starts and serve as a starting point for
  implementing other exporters.

![Example screenshot showing a trace of `stack build` executed in an already built project](https://user-images.githubusercontent.com/222467/73593896-eb6c0000-4508-11ea-81b7-772fef3cadff.png)

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

# Additional links

* [OpenTelemetry spec](https://github.com/open-telemetry/opentelemetry-specification)

**Mentors**:

- Dmitry Ivanov
- Elena Kovalenko
- Dmitrii Dolgov

**Difficulty**: Any
