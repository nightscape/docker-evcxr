[![Docker Pulls](https://img.shields.io/docker/pulls/sylwekrapala/jupyter-rust)](https://hub.docker.com/r/sylwekrapala/jupyter-rust)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/sylwekrapala/jupyter-rust)](https://hub.docker.com/r/sylwekrapala/jupyter-rust)
[![Publish Docker](https://github.com/xoac/docker-evcxr/workflows/Publish%20Docker/badge.svg)](https://github.com/xoac/docker-evcxr/actions?query=workflow%3A%22Publish+Docker%22)

# docker-jupyter-rust

A containerized version of the [Evcxr](https://github.com/google/evcxr), an evaluation context/REPL for Rust as a Jupyter kernel.

## Autobuild
This crate is build once a week with latest [rust stable] version and with latest published [evcxr].

[rust stable]:https://hub.docker.com/_/rust
[evcxr]:https://github.com/google/evcxr

## Usage
Just pull the docker image from the Docker hub:

`docker run --rm -p 8888:8888 sylwekrapala/jupyter-rust`

And go to `http://localhost:8888` (in the console log you will get a token to log).

### Don't lose your work
`docker run -v $(pwd)/notebooks:/notebooks -p 8888:8888 sylwekrapala/jupyter-rust`

The disadvantage of this is that files in `notebooks` would be owned by root.
