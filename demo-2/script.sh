#!/bin/bash

# sleep until instance is ready 
until [[ -f /var/lib/cloud/instance/boot-finished ]]; do
    sleep 1
done


# install nginx
apt update
apt -y install nginx


# make sure nginx started
service nginx start

