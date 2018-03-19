FROM fanningert/docker-caddy
LABEL maintainer fanningert <thomas@fanninger.at>

RUN apk add --no-cache --update php7-fpm
RUN apk add --no-cache --update php7-bcmath php7-bz2 php7-curl php7-dom php7-exif php7-fileinfo php7-gd php7-gettext php7-iconv php7-intl php7-json php7-mbstring php7-mysqlnd php7-opcache php7-openssl php7-pdo php7-pdo_mysql php7-pdo_sqlite php7-pear php7-soap php7-sqlite3 php7-tokenizer php7-xml php7-xmlreader php7-xmlrpc php7-xmlwriter php7-xsl php7-zip php7-zlib

# Clean up apk cache
rm -rf /var/cache/apk/*

ADD root/ /

RUN chmod -v +x /etc/services.d/*/run /etc/cont-init.d/*
