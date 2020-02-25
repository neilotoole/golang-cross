#!/usr/bin/env bash

GOLANGX_TAG=${GOLANGX_TAG:-'neilotoole/golang-cross:latest'}

docker run -it "$GOLANGX_TAG" go version