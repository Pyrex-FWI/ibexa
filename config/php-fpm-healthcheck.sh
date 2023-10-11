#!/bin/sh
set -e

export SCRIPT_NAME=/ping
export SCRIPT_FILENAME=/ping
export REQUEST_METHOD=GET
#
 #SCRIPT_NAME=/ping SCRIPT_FILENAME=/ping REQUEST_METHOD=GET SCRIPT_NAME=/ping SCRIPT_FILENAME=/ping REQUEST_METHOD=GET cgi-fcgi -bind -connect php-fpm:9000

if cgi-fcgi -bind -connect 127.0.0.1:9000; then
	exit 0
fi

exit 1
