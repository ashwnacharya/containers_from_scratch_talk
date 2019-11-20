#!/bin/bash

RANDOM_NAME=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 12 | head -n 1)

sudo docker run --name $RANDOM_NAME ubuntu
sudo docker export $RANDOM_NAME > /tmp/container.tar
mkdir /tmp/container-$RANDOM_NAME

tar -xf /tmp/container.tar -C /tmp/container-$RANDOM_NAME
ls /tmp/container-$RANDOM_NAME
