FROM renovate/node@sha256:9ccfc811bf373ed87d40eefa9d7bcaa919966eea87b77ee5d18e7b2bb30c765d

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
