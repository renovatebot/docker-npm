FROM renovate/node@sha256:ad3ff2932f0b06f7f76da01613acbfd2bfa18330d4d45383caaf2763d6ada9eb

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
