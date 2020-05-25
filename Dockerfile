# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.5

FROM renovate/buildpack:2-node@sha256:820d8068b729d39ea0e6532c664df95427c938078b3c6fd01419967cb7de6a31

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

ARG NPM_VERSION
RUN install-tool npm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"

USER 1000
