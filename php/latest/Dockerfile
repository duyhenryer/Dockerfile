FROM php:latest

LABEL maintainer="duyhenry250897@gmail.com"

WORKDIR /app

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

RUN install-php-extensions imagick gd intl mcrypt memcached mongodb opcache pcntl pdo_mysql pdo_pgsql pgsql redis zip xmlrpc sockets

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
