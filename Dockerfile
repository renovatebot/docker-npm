FROM renovate/node@sha256:3d8f93d676a7492bfa33d72d8eb44fe0743d2c31c2edb96b06297fc64cff6d07

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
