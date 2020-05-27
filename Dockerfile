# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.5

FROM renovate/buildpack:2-node@sha256:d2eaa8d410c0afefcf70b13adfc01d746bec3dd1f02729cb0eaeffc7d83a792c

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

ARG NPM_VERSION
RUN install-tool npm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"

USER 1000
