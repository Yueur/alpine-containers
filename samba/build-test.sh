#!/bin/bash

file_folder=$(dirname $0)
target=127.0.0.1:5000/alpine-samba:test

sudo docker build -f $file_folder/"test.dockerfile" . -t $target

