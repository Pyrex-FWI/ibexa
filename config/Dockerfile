FROM php:7.4-fpm

COPY  --from=3snetregistry.azurecr.io/suez/zscaler:latest /usr/share/ca-certificates/ZscalerRootCertificate-2048-SHA256.crt /usr/share/ca-certificates/ZscalerRootCertificate-2048-SHA256.crt
RUN echo 'ZscalerRootCertificate-2048-SHA256.crt' >> /etc/ca-certificates.conf
RUN update-ca-certificates

RUN apt update -y && apt install libfcgi-bin git zip unzip python2 jq -y --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/local/nvm
ENV NVM_DIR /usr/local/nvm


COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/


RUN install-php-extensions zip intl
RUN install-php-extensions xsl
RUN install-php-extensions pdo_mysql
RUN curl -sS https://get.symfony.com/cli/installer | bash

#RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs && npm install --global yarn

RUN echo "memory_limit = -1" >> /usr/local/etc/php/php.ini
#RUN composer create-project ibexa/oss-skeleton ibexa_website v3.3.29

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash \
    && chmod +x $NVM_DIR/nvm.sh && . $NVM_DIR/nvm.sh \
    && nvm install v16.20.2 \
    && npm -g install yarn

ENV PATH $NVM_DIR/versions/node/v16.20.2/bin/:$PATH
COPY entrypoint.sh /entrypoint.sh
COPY php-fpm-healthcheck.sh /usr/local/bin/php-fpm-healthcheck

RUN mkdir /ibexa
WORKDIR /ibexa

RUN chmod +x /usr/local/bin/php-fpm-healthcheck /entrypoint.sh

# RUN /entrypoint.sh
RUN echo "alias ll='ls $LS_OPTIONS -l'" >> /root/.bashrc

HEALTHCHECK --interval=15s --timeout=2s --retries=6 CMD ["php-fpm-healthcheck"]

RUN cd /ibexa && (composer create-project ezsystems/ezplatform-demo ezplatform-demo.2.5.9 2.5.9 --no-install || true)
RUN install-php-extensions gd

ENTRYPOINT [ "/entrypoint.sh" ]


