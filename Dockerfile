FROM renovate/node@sha256:391a6a96e1bb71c89c176465694e38ec2e8f9b5a9601c02560f5c63be94378c8

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
