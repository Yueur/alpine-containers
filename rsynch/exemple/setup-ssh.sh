#!/bin/bash

# THIS FILE IS FOR UBUNTU

sudo apt-get update
sudo apt-get -y install openssh-client

ssh-keygen

cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys





