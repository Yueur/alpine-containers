FROM 127.0.0.1:5000/alpine:3.8.0

# Install Apache
RUN apk update && \
	apk upgrade && \
	apk add doxygen && \
	rm -rf /var/cache/apk/*

ENV DEFAULT_WORKDIR /srv/workdir

# Fix install
RUN mkdir -p $DEFAULT_WORKDIR

WORKDIR $DEFAULT_WORKDIR

ENTRYPOINT ["doxygen"]
#CMD ["--version"]
CMD ["-g"]

