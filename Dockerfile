FROM renovate/node:12@sha256:15f9ea4d553c535d050599f6ca7366dda938c742fe20c8f529fd94b6fa02af86

# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.4

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"


# required by installer
# renovate: datasource=docker depName=renovate/node versioning=docker
ARG NODE_VERSION=12

RUN /usr/local/build/npm.sh

USER 1000
