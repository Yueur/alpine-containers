#!/bin/bash

init_source(){
	src=$1
	rm $src/ -fR
	mkdir $src/ -p
	# This works on ubuntu for not on alpine
	#touch $src/file{1..100}.txt
	for i in $(seq 1 100);
	do
		touch "$src/file$i.txt"
	done
}

init_source "dir1"

