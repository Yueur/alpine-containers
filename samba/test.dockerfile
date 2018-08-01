FROM 127.0.0.1:5000/alpine-samba

ENV SAMBA_CNF_PATH /etc/samba/smb.conf
ENV SAMBA_DEFAULT_SHARE_PATH /var/samba/public_share/

# Create a share and add it in the config file
RUN mkdir $SAMBA_DEFAULT_SHARE_PATH -p && \
	chmod 777 $SAMBA_DEFAULT_SHARE_PATH && \
	echo '[Commun]' >> $SAMBA_CNF_PATH && \
	echo "    path = $SAMBA_DEFAULT_SHARE_PATH" >> $SAMBA_CNF_PATH && \
	echo '    guest ok = yes' >> $SAMBA_CNF_PATH && \
	echo '    browseable = yes' >> $SAMBA_CNF_PATH && \
	echo '    read only = no' >> $SAMBA_CNF_PATH && \
	echo '    writable = yes' >> $SAMBA_CNF_PATH && \
	echo '    create mask = 0777' >> $SAMBA_CNF_PATH && \
	echo '    directory mask = 0777' >> $SAMBA_CNF_PATH

