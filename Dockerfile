FROM renovate/node

ENV NPM_VERSION=6.4.1

RUN apt-get update && apt-get install -y git openssh-client && apt-get clean -y

RUN npm i -g npm@$NPM_VERSION

USER ubuntu
