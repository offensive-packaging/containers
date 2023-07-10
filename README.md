Container Images

This repository provides the code and configuration to build
the official Parrot Security container images.
Such images can be used with any OCI-compliant container engine,
like Docker, Podman or various Kubernetes distributions.

[![pipeline status](https://github.com/offensive-packaging/containers/badges/latest/pipeline.svg)](https://github.com/offensive-packaging/containers/-/commits/latest)

[![Latest Release](https://github.com/offensive-packaging/containers/-/badges/release.svg)](https://github.com/offensive-packaging/containers/-/releases)

# Core

The core folder contains the Dockerfile to build the basic Parrot Core image.
It is used as foundation for all the other images.

# Security
The security folder contains the Dockerfile to build a general purpose image
that contains as many useful CLI tools as possible.

# Tools
The tools folder contains several subfolders that represent a curated selection of tools
that we think may deserve a dedicated lightweight image.
