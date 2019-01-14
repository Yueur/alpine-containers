#!/bin/bash

sudo docker run -d --name dns-service -p 53:53/udp 127.0.0.1:5000/dns-test:latest

