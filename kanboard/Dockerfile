FROM 127.0.0.1:5000/alpine-apache-php

# Here we assume that web-root is: /var/www/localhost/htdocs and user is apache:apache

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

# Clean web dir
RUN rm /var/www/localhost/htdocs/* -r

# Pull from repo
RUN url=https://github.com/kanboard/kanboard/archive/v1.2.5.tar.gz && \
	filename=v1.2.5.tar.gz && \
	target=./ && \
	unziped_name=kanboard-1.2.5 && \
	www_path=/var/www/localhost/htdocs && \
	wget $url && \
	mkdir -p $target && \
	tar zxf $filename -C $target && \
	rm $filename && \
	mkdir -p $www_path && \
	mv $unziped_name/* $www_path

# Patch rights
RUN chown apache:apache /var/www/localhost/htdocs/data/
