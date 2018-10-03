#!/bin/bash

current_dir=$(cd $(dirname $0); pwd)
current_dir=$current_dir/test


sudo docker run --rm -v $current_dir:/srv/workdir 127.0.0.1:5000/alpine-doxygen

sudo chown $USER:$(id -g) $current_dir/Doxyfile

