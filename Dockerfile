FROM renovate/node@sha256:b675b096edd733b2045d3ef4ba0adbf3cce65f814d68b0eb42a06b4d5be7e050

USER node

ENV NPM_VERSION=6.9.0

RUN npm i -g npm@$NPM_VERSION

USER ubuntu
