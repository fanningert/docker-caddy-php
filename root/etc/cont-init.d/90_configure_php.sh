#!/usr/bin/with-contenv bash

mkdir -p /conf

dockerize -template /app/start_php.sh:/conf/start_php.sh
dockerize -no-overwrite -template /app/php-fpm_www.conf:/config/php-fpm_www.conf
dockerize -no-overwrite -template /app/php.ini:/config/php.ini

ln -s /etc/php7/php.ini /config/php.ini

chmod +x /conf/start_php.sh
chown -R app:users /conf
chown -R app:users /config
