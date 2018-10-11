FROM renovate/node

ENV NPM_VERSION=6.4.1

RUN npm i -g npm@$NPM_VERSION

USER ubuntu
