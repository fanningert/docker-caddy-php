#!/usr/bin/with-contenv bash

dockerize -template /app/start_php.sh:/config/start_php.sh

chmod +x /config/start_php.sh
chown -R app:users /config
