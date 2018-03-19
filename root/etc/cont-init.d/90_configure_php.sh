#!/usr/bin/with-contenv bash

mkdir -p /conf

dockerize -template /app/start_php.sh:/conf/start_php.sh

chmod +x /conf/start_php.sh
chown -R app:users /conf
