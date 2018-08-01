FROM 127.0.0.1:5000/alpine:3.8.0

ENV SAMBA_CNF_PATH /etc/samba/smb.conf
ENV START_FILE /etc/init.d/start_container.sh
ENV DEFAULT_BASH_PATH /bin/sh

# Install samba
RUN apk update && \
	apk upgrade && \
	apk add bash openrc samba && \
	rm -rf /var/cache/apk/* && \
	cp $SAMBA_CNF_PATH $SAMBA_CNF_PATH.old

# Create entry point
RUN touch $START_FILE && \
	chmod 755 $START_FILE && \
	echo '/usr/sbin/smbd -D' >> $START_FILE && \
	echo '/usr/sbin/nmbd -D' >> $START_FILE && \
	echo '$DEFAULT_BASH_PATH' >> $START_FILE

EXPOSE 137/udp
EXPOSE 138/udp
EXPOSE 139/tcp
EXPOSE 445/tcp

# RUN mkdir /var/run/samba
CMD $START_FILE

