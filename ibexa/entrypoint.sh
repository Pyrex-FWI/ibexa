#!/bin/sh

cd /ibexa
pwd
if [ ! -d "/ibexa/ibexa_website" ]; then
  composer create-project ibexa/oss-skeleton ibexa_website v3.3.35 --no-install
  cd ibexa_website && rm -f composer.lock 
  php -dmemory_limit=-1 `which composer` install -n
fi

ls -al /usr/local/bin/
/usr/local/bin/docker-php-entrypoint apache2-foreground