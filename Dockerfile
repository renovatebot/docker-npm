FROM renovate/node@sha256:d02a9af1d6dbe9ac8685d169feecf5d22bffac7a720ed3e935ea0bc3e5a92266

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
