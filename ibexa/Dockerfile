FROM php:7.4-apache
#FROM php:8.0-cli

RUN apt update -y && apt install git zip unzip python2 jq -y --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
ENV NVM_DIR /root/.nvm

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/


RUN install-php-extensions zip intl
RUN install-php-extensions xsl
RUN install-php-extensions pdo_mysql
RUN curl -sS https://get.symfony.com/cli/installer | bash

#RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs && npm install --global yarn

RUN echo "memory_limit = -1" >> /usr/local/etc/php/php.ini
#RUN composer create-project ibexa/oss-skeleton ibexa_website v3.3.29
COPY entrypoint.sh /entrypoint.sh
RUN mkdir /ibexa
ENTRYPOINT [ "/entrypoint.sh" ]
WORKDIR /ibexa


