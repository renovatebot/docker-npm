FROM renovate/node@sha256:6c659dfa8d63e02e7f806845d47269cba912ba983562db6e2fcb53b22abb3756

USER node

ENV NPM_VERSION=6.9.0

RUN npm i -g npm@$NPM_VERSION

USER ubuntu
