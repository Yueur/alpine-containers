FROM 127.0.0.1:5000/alpine-apache-php

# Install needed libs
RUN apk update && \
	apk add php7-pdo_sqlite \
		php7-gd \
		php7-mbstring \
		php7-openssl \
		php7-json \
		php7-ctype \
		php7-session \
		php7-dom \
		php7-simplexml \
		php7-xml && \
	rm -rf /var/cache/apk/*

COPY kanboard-1.2.5/ /var/www/localhost/htdocs/

RUN rm /var/www/localhost/htdocs/index.html && \
	chown apache:apache /var/www/localhost/htdocs/data/

