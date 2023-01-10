FROM php:8.2-alpine

ARG VERSION=1.3.2

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY config/drupal-check.ini /usr/local/etc/php/conf.d

RUN composer global require mglaman/drupal-check:${VERSION}

ENV PATH "$PATH:/root/.composer/vendor/bin"

WORKDIR /app

CMD sh