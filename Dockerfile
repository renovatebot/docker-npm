FROM renovate/node@sha256:b857db5bc30f3f622580c0df0824cc7d7eb170373e37b983c2096d21a7a59935

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
