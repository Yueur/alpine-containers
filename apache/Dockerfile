FROM 127.0.0.1:5000/alpine:3.8.0

# Install Apache
RUN apk update && \
	apk upgrade && \
	apk add apache2 && \
	apk add curl && \
	rm -rf /var/cache/apk/*

# Fix install
RUN mkdir -p /run/apache2/

# adduser -D -g 'apache' apache # This is useless


# Add hostname to avoid warning
#ENV HOSTNAME localhost
#RUN echo "ServerName $HOSTNAME" >> /etc/apache2/httpd.conf

WORKDIR /var/www/localhost/htdocs

EXPOSE 80

# Check container's health
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
	CMD curl -f http://127.0.0.1/ || exit 1

# Start apache
# httpd 
CMD ["httpd", "-DFOREGROUND"]

