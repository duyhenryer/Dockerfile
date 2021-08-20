FROM tdien105/php:7.3

RUN pecl uninstall mongodb 
# update to mongodb-1.9.0 
RUN install-php-extensions mongodb rdkafka \
    && docker-php-ext-enable rdkafka
