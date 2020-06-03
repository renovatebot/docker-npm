# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.5

FROM renovate/buildpack:2-node@sha256:d9bf882d42387eda98f643e35f1eff9c85f877d418e165cb1f97238520d5f277

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.17.0
RUN install-tool node

ARG NPM_VERSION
RUN install-tool npm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"

USER 1000
