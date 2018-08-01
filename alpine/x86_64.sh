#!/bin/bash

src=http://dl-cdn.alpinelinux.org/alpine/v3.8/releases/x86_64/alpine-minirootfs-3.8.0-x86_64.tar.gz

dst_1=127.0.0.1:5000/alpine
dst_2=$dst_1:3.8.0
sudo docker import --change "CMD sh" $src $dst_1
sudo docker tag $dst_1 $dst_2 

