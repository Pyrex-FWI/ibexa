FROM php:7.4-fpm

COPY  --from=3snetregistry.azurecr.io/suez/zscaler:latest /usr/share/ca-certificates/ZscalerRootCertificate-2048-SHA256.crt /usr/share/ca-certificates/ZscalerRootCertificate-2048-SHA256.crt
RUN echo 'ZscalerRootCertificate-2048-SHA256.crt' >> /etc/ca-certificates.conf
RUN update-ca-certificates

RUN apt update -y && apt install git zip unzip python2 jq -y --no-install-recommends && rm -rf /var/lib/apt/lists/*
ENV NVM_DIR /root/.nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash \
    && chmod +x $NVM_DIR/nvm.sh && $NVM_DIR/nvm.sh \
    && nvm install v16.20.2 \
    && npm -g install yarn

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


