FROM renovate/node@sha256:c1a496ddf4df3f41066dab7dfc45d99b01b33220f219d5188cc1feca733d20bd

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
