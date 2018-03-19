#!/usr/bin/with-contenv bash

ln -s /etc/php7/php-fpm.conf /config/php-fpm.conf 
dockerize -template /app/start_php.sh:/config/start_php.sh

chmod +x /config/start_php.sh
chown -R app:users /config
