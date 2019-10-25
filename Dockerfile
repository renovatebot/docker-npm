FROM renovate/node@sha256:5f9461153755d482ebf16a5ebf57bda3c8ec9a9ad090aacf6381170ce1340d67

USER root

ARG NPM_VERSION

RUN npm i -g npm@$NPM_VERSION

RUN chmod -R a+rw /usr/local

RUN chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
