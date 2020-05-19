# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.5

FROM renovate/buildpack:2-node@sha256:a05ad7cac1dfefe9d8c5d26db3d918138c04eeaa8ddefd2547180fb69a4e58e7

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

ARG NPM_VERSION
RUN install-tool npm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"

USER 1000
