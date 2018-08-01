FROM 127.0.0.1:5000/alpine:3.8.0

# Install Nginx
RUN apk update && \
	apk upgrade && \
	apk add nginx && \
	rm -rf /var/cache/apk/* && \
	adduser -D -g 'www' www && \
	mkdir /www && \
	chown -R www:www /www && \
	chown -R www:www /var/lib/nginx

# Configure
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.old && \
    mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.old && \
	mkdir /run/nginx/ && \
	touch /run/nginx/nginx.pid

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/lib/nginx/html

EXPOSE 80

# You can check with => nginx -t
# You can check with => nginx -g "daemon off;"

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

