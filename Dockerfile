FROM renovate/buildpack:1@sha256:0fa21d11578682fb27ab2abdf885854ae4ce4fe05a411622c371adccef0cd755

# renovate: datasource=docker depName=node versioning=docker
ARG NODE_VERSION=12.16.2
RUN install-tool node

# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.5
RUN install-tool npm

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"

USER 1000
