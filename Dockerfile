FROM renovate/node@sha256:1f7048567a0d837bd0851925413f6cc00cab66f0ecee197030c60344d05dc39c

ENV NPM_VERSION=6.4.1

RUN npm i -g npm@$NPM_VERSION

USER ubuntu
