FROM php:8
#FROM php:8.0-cli

#COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN apt update -y && apt install git zip unzip -y

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/


RUN install-php-extensions zip intl
RUN install-php-extensions xsl
RUN php -m && php -v

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs && npm install --global yarn

RUN echo "memory_limit = -1" >> /usr/local/etc/php/php.ini
RUN composer create-project ibexa/oss-skeleton ibexa_website v4.08

