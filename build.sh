#!/usr/bin/env bash

# Builds a cgo cross-compiling image:
# - Go 1.14
# - macOS 10.15 (Catalina)

# For background, see:
# https://github.com/docker/golang-cross
# https://hub.docker.com/r/dockercore/golang-cross/dockerfile
# https://vsupalov.com/docker-arg-env-variable-guide/
# https://docs.docker.com/engine/reference/commandline/build/


GOLANGX_TAG=${GOLANGX_TAG:-'neilotoole/golang-cross:latest'}
GO_VERSION=1.14

OSX_SDK_BASEURL="https://sqio-public.s3.amazonaws.com/tools/macos_sdk"

# 10.15
OSX_SDK=MacOSX10.15.sdk
OSX_CODENAME="catalina"
OSX_SDK_SUM=d97054a0aaf60cb8e9224ec524315904f0309fbbbac763eb7736bdfbdad6efc8

OSX_CROSS_COMMIT=bee9df60f169abdbe88d8529dbcc1ec57acf656d



docker build \
 --build-arg GO_VERSION="${GO_VERSION}" \
 --build-arg OSX_SDK_BASEURL="${OSX_SDK_BASEURL}" \
 --build-arg OSX_SDK="${OSX_SDK}" \
 --build-arg OSX_OSX_CODENAME="${OSX_CODENAME}" \
 --build-arg OSX_SDK_SUM="${OSX_SDK_SUM}" \
 --build-arg OSX_CROSS_COMMIT="${OSX_CROSS_COMMIT}" \
 -t "${GOLANGX_TAG}" .