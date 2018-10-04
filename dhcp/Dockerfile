FROM 127.0.0.1:5000/alpine:3.8.0

# Install DHCP server
RUN apk update && \
	apk upgrade && \
	apk add dhcp && \
	rm -rf /var/cache/apk/*

# Use a volume to delete $PATH_CONFIG
ENV PATH_EXEMPLE_CONFIG /etc/dhcp/dhcpd.conf.example
ENV PATH_CONFIG /etc/dhcpd.conf

#RUN cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.old
RUN touch /var/lib/dhcp/dhcpd.leases && \
	cp $PATH_EXEMPLE_CONFIG $PATH_CONFIG


# DHCP is on port 67 as UDP
#EXPOSE 67/tcp
EXPOSE 67/udp 

CMD ["/usr/sbin/dhcpd", "-d"]

