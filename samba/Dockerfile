FROM 127.0.0.1:5000/alpine:3.8.0

ENV DEFAULT_WORKDIR /srv/
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
RUN mkdir -p $DEFAULT_WORKDIR && \
	touch $START_FILE && \
	chmod 755 $START_FILE && \
	echo "#!$DEFAULT_BASH_PATH" > $START_FILE && \
	echo '' >> $START_FILE && \
	echo '/usr/sbin/smbd -D' >> $START_FILE && \
	echo '/usr/sbin/nmbd -D' >> $START_FILE && \
	echo '$DEFAULT_BASH_PATH' >> $START_FILE

WORKDIR $DEFAULT_WORKDIR

# Script to add user manual
RUN tmp=$DEFAULT_WORKDIR/add_user_manual.sh && \
	touch $tmp && \
	chmod 755 $tmp && \
	echo "#!$DEFAULT_BASH_PATH" > $tmp && \
	echo '' >> $tmp && \
	echo 'if [ -z "$1" ]; then' >> $tmp && \
	echo '    echo ""' >> $tmp && \
	echo '    echo "Need an argument to run. Give username"' >> $tmp && \
	echo '    echo "    $0 #username"' >> $tmp && \
	echo '    echo ""' >> $tmp && \
	echo '    exit' >> $tmp && \
	echo 'fi' >> $tmp && \
	echo '' >> $tmp && \
	echo 'new_user=$1' >> $tmp && \
	echo 'adduser -D -H $new_user' >> $tmp && \
	echo 'smbpasswd -a $new_user' >> $tmp

# Script to add user auto
RUN tmp=$DEFAULT_WORKDIR/add_user_auto.sh && \
	touch $tmp && \
	chmod 755 $tmp && \
	echo "#!$DEFAULT_BASH_PATH" > $tmp && \
	echo '' >> $tmp && \
	echo 'if [ -z "$1" ] || [ -z "$2" ]; then' >> $tmp && \
	echo '    echo ""' >> $tmp && \
	echo '    echo "Need 2 arguments to run. Give username and password"' >> $tmp && \
	echo '    echo "    $0 #username #password"' >> $tmp && \
	echo '    echo ""' >> $tmp && \
	echo '    exit' >> $tmp && \
	echo 'fi' >> $tmp && \
	echo '' >> $tmp && \
	echo 'new_user=$1' >> $tmp && \
	echo 'password=$2' >> $tmp && \
	echo 'adduser -D -H $new_user' >> $tmp && \
	echo '(echo "$password"; echo "$password") | smbpasswd -s -a $new_user' >> $tmp


# VOLUME /usr/bin/smbpasswd

EXPOSE 137/udp 138/udp 139/tcp 445/tcp

# RUN mkdir /var/run/samba
CMD $START_FILE

