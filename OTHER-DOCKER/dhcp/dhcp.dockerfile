FROM debian

RUN apt-get update && \
	apt-get install -y --no-install-recommends isc-dhcp-server && \
	DEBIAN_FRONTEND=noninteractive apt-get purge -y --auto-remove ${build_deps} && \
	rm -r /var/lib/apt/lists/*

RUN touch /var/lib/dhcp/dhcpd.leases

RUN cp /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.old && \
	cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.old

# DHCP is on port 67 as UDP
#EXPOSE 67/tcp
EXPOSE 67/udp 

CMD ["/usr/sbin/dhcpd", "-d"]

