#!/usr/bin/env bash


GOLANGX_TAG=${GOLANGX_TAG:-'neilotoole/golang-cross:latest'}
GOLANGX_GO_VERSION=${GOLANGX_GO_VERSION:-'1.13.7'}
# https://github.com/docker/golang-cross
# https://hub.docker.com/r/dockercore/golang-cross/dockerfile
# https://vsupalov.com/docker-arg-env-variable-guide/
# https://docs.docker.com/engine/reference/commandline/build/

docker build --build-arg GO_VERSION="${GOLANGX_GO_VERSION}" -t "${GOLANGX_TAG}" .