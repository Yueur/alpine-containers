#!/bin/bash

stack_name="notebook"
compose_filename="docker-compose.yml"

create_dir(){
	src=$1
	sudo mkdir -p $1
	sudo chmod 777 $1
}

create_dir "/srv/docker/notebook-default/"
create_dir "/srv/docker/notebook-datascience/"

sudo docker-compose -f $compose_filename -p $stack_name up --detach

