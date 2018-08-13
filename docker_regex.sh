#!/usr/bin/env bash


### Performs the action `docker $2` on all containers whose name match the
### regex $1.
regex=$1
cmd=$2
sudo docker ps | tail -n +2 | grep "$regex" | awk '{print $1}' | xargs sudo docker "$cmd"
