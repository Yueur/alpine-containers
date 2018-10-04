#!/bin/bash

# For this one you need to run it from INSIDE the right folder. This is due to the COPY statement

file_folder=$(cd $(dirname $0); pwd)

name=dhcp
image=127.0.0.1:5000/alpine-dhcp

sudo docker run -d \
	--name $name \
	--hostname=$name \
	--restart=unless-stopped \
	-p 67:67/udp \
	-v $file_folder/dhcpd.conf:/etc/dhcpd.conf \
	$image

# -p 67:67/udp \
# --net host

