# bazel_kotlin

A small Kotlin/Bazel sample repository, mostly created so that I have an example to point to in bug reports.

## Installation

Install [bazelisk](https://github.com/bazelbuild/bazelisk).

### Direnv

This repository supports [direnv](https://direnv.net/).

Usage:

1. Setup direnv
2. Run `direnv allow`
3. Follow instructions and run `bazel run //env`

## First steps

Run `bazel test //...` to build and test everything in this repo.

## Update maven_install.json

If you made changes to external jars in [MODULE.bazel](./MODULE.bazel):

```bash
REPIN=1 bazel run @maven//:pin
```

