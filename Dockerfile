FROM renovate/node:12@sha256:e627c4af063010fb60ca220f377c46a0fb5fd845d73a18bc95645f1c9d806b20

# renovate: datasource=npm depName=npm versioning=npm
ARG NPM_VERSION=6.14.4

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-npm" \
      org.opencontainers.image.version="${NPM_VERSION}"


# required by installer
# renovate: datasource=docker depName=renovate/node versioning=docker
ARG NODE_VERSION=12

RUN /usr/local/build/npm.sh

USER 1000
