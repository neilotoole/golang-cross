## Fork
This [neilotoole/golang-cross](https://github.com/neilotoole/golang-cross) repo forks
the  [docker/golang-cross](https://github.com/docker/golang-cross) repo because that
repo's images are published with an older version of Go (`1.12.x` at the time of writing).
This image builds to a newer Go version.



# Golang Cross Compile Docker Image

This repo contains a Dockerfile for building an image which is used to cross
compile golang. It includes the MinGW compiler for windows, and an OSX SDK.

This image is available from https://hub.docker.com/r/dockercore/golang-cross
and is used to build https://github.com/docker/cli.
