#!/bin/bash

# For this one you need to run it from INSIDE the right folder. This is due to the COPY statement

file_folder=$(dirname $0)
target=127.0.0.1:5000/alpine-dhcp

cd $file_folder

sudo docker build -f $file_folder/"Dockerfile" . -t $target

