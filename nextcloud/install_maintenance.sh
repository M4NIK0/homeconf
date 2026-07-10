#!/bin/bash

# Install/Update
sudo docker run -d --name nextcloud-aio-mastercontainer --restart always -p 8080:8080 -e APACHE_PORT=11000 --volume nextcloud_aio_mastercontainer:/mnt/docker-aio-config --volume /var/run/docker.sock:/var/run/docker.sock:ro nextcloud/all-in-one:latest

# Update local files database
sudo docker exec --user www-data -it nextcloud-aio-nextcloud php occ files:scan-app-data && sudo docker exec --user www-data -it nextcloud-aio-nextcloud php occ files:scan --all
