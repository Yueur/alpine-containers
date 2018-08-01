#!/bin/bash

sudo docker run --rm -ti \
	-p 137:137 \
	-p 138:138 \
	-p 139:139 \
	-p 445:445 \
	127.0.0.1:5000/alpine-samba:test

