FROM renovate/node@sha256:665f3ca0226c707eab7c5f2ab074bb61e767547e7bb859733dde4f72251a87b3

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
