#!/bin/bash

build_image(){
	src=$1
	dst=$2
	sudo docker build -f $src . -t $dst
#	sudo docker build -f $src . -t $dst --no-cache
}

build_all(){
	build_image "notebook.dockerfile" "localhost:5000/notebook"
	build_image "notebook-custom.dockerfile" "localhost:5000/notebook-custom"
}

pull_from_repo(){
	sudo docker pull jupyter/base-notebook
	sudo docker pull jupyter/scipy-notebook
	sudo docker pull jupyter/datascience-notebook

	# sudo docker pull jupyter/scipy-notebook:2c80cf3537ca
	# sudo docker pull jupyter/datascience-notebook:e5c5a7d3e52d
}

build_all

