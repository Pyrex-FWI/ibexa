#!/bin/sh

cd /ibexa

echo ""
echo "===================================="
echo "===============IBEXA================"
echo "===================================="
echo ""

setComposerVersion () {
  echo "[*] Update composer to $1 version"
  composer selfupdate $1
}

cmpInstall () {
  echo "[*] Composer: Install vendor in dir $1"
  php -dmemory_limit=-1 `which composer` install -n -d $1
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# echo "[*] Install node"
# nvm install v16.20.2
npm config set strict-ssl false #Corp with Nice Zscaler

# echo "[*] Install yarn"
# npm -g install yarn
yarn config set strict-ssl false #Corp with Nice Zscaler


if [ ! -d "/ibexa/ibexa_website" ]; then
  composer create-project ibexa/oss-skeleton ibexa_website v3.3.35 --no-install
  mv /ibexa/ibexa_website/composer.lock /ibexa/ibexa_website/composer.lock.init_back
  setComposerVersion "--2"
  cmpInstall /ibexa/ibexa_website
fi

setComposerVersion "--2"
cmpInstall /ibexa/ibexa_website

echo ""
echo "===================================="
echo "============EZPLATFORM=============="
echo "===================================="
echo ""

if [ ! -d "/ibexa/ezplatform_website" ]; then
  #https://github.com/ezsystems/ezplatform/tree/v2.5.31
  composer create-project ezsystems/ezplatform ezplatform_website v2.5.31 --no-install
  # mv /ibexa/ezplatform_website/composer.lock /ibexa/ezplatform_website/composer.lock.init_back
  setComposerVersion --1
  #Fix issue with wrong git repository
  # composer update hautelook/templated-uri-router
  # composer remove sensiolabs/security-checker --no-update

  # if [ $(grep -c '@php bin/security-checker security:check' composer.json) -ge 1 ]; then
  #   cmpString=$( cat composer.json )
  #   echo $cmpString | jq 'del(.scripts."symfony-scripts"[] | select(. == "@php bin/security-checker security:check"))' > composer_mod
  # fi
  cmpInstall /ibexa/ezplatform_website
fi

setComposerVersion --1
# nvm install v14.21.3 && npm -g install yarn
#Issue Error: Cannot find module '@babel/compat-data/corejs3-shipped-proposals
# npm update --depth 5 @babel/compat-data
#php -dmemory_limit=-1 `which composer` remove symfony/thanks -n -d /ibexa/ezplatform_website --no-update
# php -dmemory_limit=-1 `which composer` remove composer require laminas/laminas-zendframework-bridge -n -d /ibexa/ezplatform_website
 cmpInstall /ibexa/ezplatform_website


# /usr/local/bin/docker-php-entrypoint apache2-foreground

echo 'ping.path = /ping' >> /usr/local/etc/php-fpm.d/www.conf
echo 'ping.path=/ping' >> /usr/local/etc/php-fpm.d/www.conf
echo 'ping.response=pong' >> /usr/local/etc/php-fpm.d/www.conf


/usr/local/bin/docker-php-entrypoint php-fpm
