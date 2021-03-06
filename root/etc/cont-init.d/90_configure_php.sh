#!/usr/bin/with-contenv bash

mkdir -p /conf

dockerize -template /app/start_php.sh:/config/start_php.sh
dockerize -no-overwrite -template /app/php-fpm_www.conf:/conf/php-fpm_www.conf
dockerize -no-overwrite -template /app/php.ini:/conf/php.ini

ln -s /conf/php-fpm_www.conf /etc/php7/php-fpm.d/www.conf
ln -s /conf/php.ini /etc/php7/php.ini

chmod +x /config/start_php.sh
chown -R app:users /conf
chown -R app:users /config
