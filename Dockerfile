# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.5

FROM renovate/buildpack:2-node@sha256:b0aae95d55264a80ab01c48ab992bd135e6aa88f01d130e8bf8fb40ab3d3129a

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.3
RUN install-tool node

ARG NPM_VERSION
RUN install-tool npm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"

USER 1000
