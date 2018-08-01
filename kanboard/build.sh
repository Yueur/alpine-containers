#!/bin/bash

# Download kanboard from "https://github.com/kanboard/kanboard/archive/v1.2.5.zip" or "https://github.com/kanboard/kanboard/releases"

file_folder=$(dirname $0)
target=127.0.0.1:5000/alpine-kanboard

sudo docker build -f $file_folder/"Dockerfile" . -t $target

