#!/bin/bash

file_folder=$(cd $(dirname $0); pwd)
target=127.0.0.1:5000/dns-base
dockerfile="base.docker"

cd $file_folder

sudo docker build -f $file_folder/$dockerfile . -t $target

