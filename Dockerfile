FROM renovate/buildpack:1@sha256:10e98460170e2ed4ea5150f5baefe0589c60bd8c63bf1f06fac5b8a61b61040d

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.4
RUN install-tool npm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"

USER 1000
