FROM php:7.3-alpine

ARG VERSION=1.0.14

RUN curl -O -L https://github.com/mglaman/drupal-check/releases/download/${VERSION}/drupal-check.phar \
    && mv drupal-check.phar /usr/local/bin/drupal-check \
    && chmod +x /usr/local/bin/drupal-check

WORKDIR /app

CMD sh