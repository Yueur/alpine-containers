#!/bin/bash

# The path to the file folder.
file_folder=$(dirname $0)

sudo docker build -f $file_folder/"dhcp.dockerfile" . -t 127.0.0.1:5000/dhcp

