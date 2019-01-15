FROM renovate/node@sha256:3aadc68f833c040c743495776bf4e36cb7b93dbdf7451ae4c4d2af8273ed5d4d

ENV NPM_VERSION=6.4.1

RUN npm i -g npm@$NPM_VERSION

USER ubuntu
