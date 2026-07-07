#!/bin/bash

sudo nano /etc/docker/daemon.json

# Put this text in the file (DONT FORGET TO UPDATE THE PATH)

#{ 
#   "data-root": "/new/docker/root"
#}

sudo systemctl start docker.socket
sudo systemctl start docker.service
sudo systemctl status docker
sudo docker info | grep "Docker Root Dir"

sudo rm -rf /var/lib/docker/
