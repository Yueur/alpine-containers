#!/bin/bash

# ONLY RUN IN CLOSED ENVIRONEMENT
# ONLY RUN IN CLOSED ENVIRONEMENT
# ONLY RUN IN CLOSED ENVIRONEMENT
# ONLY RUN IN CLOSED ENVIRONEMENT
# ONLY RUN IN CLOSED ENVIRONEMENT
# ONLY RUN IN CLOSED ENVIRONEMENT


# DON'T RUN THIS IF THERE IS ALREADY A DHCP RUNNING

# DON'T FORGET TO MANUALLY COPY THE 2 FILES IN THE RIGHT FOLDER FIRST

# ------------------------------------------
# The path to the file folder.

# Parameters
name="dhcp-debian"
host_folder=/srv/docker/dhcp

sudo docker run -id \
	--name $name \
	--hostname=$name \
	--restart=unless-stopped \
	--net=host \
	-v $host_folder/isc-dhcp-server:/etc/default/isc-dhcp-server \
	-v $host_folder/dhcpd.conf:/etc/dhcp/dhcpd.conf \
	127.0.0.1:5000/dhcp







