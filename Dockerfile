FROM renovate/buildpack:1@sha256:2a94923b7bb1956f5faf1c82b4578436774e13786ce4f693a713b63185e88af2

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.4
RUN install-tool npm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"

USER 1000
