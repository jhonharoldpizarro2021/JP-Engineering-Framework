# syntax=docker/dockerfile:1.7

ARG PHP_VERSION=8.2

FROM composer:2 AS composer

FROM php:${PHP_VERSION}-fpm-bookworm AS php-base

ARG APP_USER=app
ARG APP_UID=1000
ARG APP_GID=1000

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git \
        unzip \
        libicu-dev \
        libzip-dev \
        libpng-dev \
        libjpeg62-turbo-dev \
        libfreetype6-dev \
        libonig-dev \
        default-mysql-client \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j"$(nproc)" \
        bcmath \
        gd \
        intl \
        opcache \
        pcntl \
        pdo_mysql \
        zip \
    && groupadd --gid "${APP_GID}" "${APP_USER}" \
    && useradd --uid "${APP_UID}" --gid "${APP_GID}" --create-home "${APP_USER}" \
    && mkdir -p /var/www/html \
    && chown -R "${APP_USER}:${APP_USER}" /var/www/html \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

COPY --from=composer /usr/bin/composer /usr/local/bin/composer
COPY docker/php/php.ini /usr/local/etc/php/conf.d/99-project.ini
COPY docker/php/docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]

FROM php-base AS development

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        sudo \
        procps \
    && echo "${APP_USER} ALL=(root) NOPASSWD:ALL" > "/etc/sudoers.d/${APP_USER}" \
    && chmod 0440 "/etc/sudoers.d/${APP_USER}" \
    && rm -rf /var/lib/apt/lists/*

USER ${APP_USER}

CMD ["php-fpm"]

FROM node:20-bookworm-slim AS frontend-build

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM php-base AS production

ENV APP_ENV=production
ENV APP_DEBUG=false
ENV RUN_MIGRATIONS=false

COPY composer.json composer.lock ./
RUN composer install \
    --no-dev \
    --no-interaction \
    --no-progress \
    --prefer-dist \
    --optimize-autoloader \
    --classmap-authoritative \
    --no-scripts

COPY . .
COPY --from=frontend-build /app/public/build ./public/build

RUN composer dump-autoload --no-dev --optimize --classmap-authoritative \
    && mkdir -p storage/framework/cache storage/framework/sessions storage/framework/views bootstrap/cache \
    && chown -R ${APP_USER}:${APP_USER} storage bootstrap/cache

USER ${APP_USER}

CMD ["php-fpm"]
