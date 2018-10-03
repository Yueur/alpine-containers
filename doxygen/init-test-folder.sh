#!/bin/bash

current_dir=$(cd $(dirname $0); pwd)
current_dir=$current_dir/test

sudo mkdir $current_dir -p
sudo chown $USER:$(id -g) $current_dir
sudo rm $current_dir/* -fr
touch $current_dir/README.md
