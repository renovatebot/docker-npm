#!/bin/bash

export DATASOURCE=npm
export LOOKUP_NAME=npm
export VERSION_SCHEME=npm
export START_VERSION=5.0.0
export IMAGE=npm
export IGNORED_VERSIONS=6.2.0-next.0

npx renovatebot/dockerbuilder
