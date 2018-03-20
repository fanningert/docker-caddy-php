#!/usr/bin/with-contenv bash

mkdir -p /conf
mkdir -p /config/phpext

dockerize -template /app/start_php.sh:/conf/start_php.sh
dockerize -no-overwrite -template /app/php-fpm_www.conf:/config/php-fpm_www.conf
dockerize -no-overwrite -template /app/php.ini:/config/php.ini

ln -s /config/php-fpm_www.conf /etc/php7/php-fpm.d/www.conf
ln -s /config/php.ini /etc/php7/php.ini

# add
for file in /config/phpext/*.ini; do
  cat /config/phpext/$(basename "$file") > /etc/php7/conf.d/$(basename "$file")
done

chmod +x /conf/start_php.sh
chown -R app:users /conf
chown -R app:users /config
