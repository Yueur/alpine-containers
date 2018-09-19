FROM 127.0.0.1:5000/alpine:3.8.0

ENV DEFAULT_HOMEDIR /root/

# Install RSynch
RUN apk update && \
	apk upgrade && \
	apk add rsync && \
	rm -rf /var/cache/apk/* && \
	mkdir -p $DEFAULT_HOMEDIR

WORKDIR $DEFAULT_HOMEDIR

