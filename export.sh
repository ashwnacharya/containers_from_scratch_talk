#!/bin/bash

rm -rf ~/containerfs
rm -rf ~/container.tar

sudo docker rm test
sudo docker run --name test ubuntu

sudo docker export test > container.tar

mkdir ~/containerfs
tar -xf container.tar -C ~/containerfs

ls ~/containerfs
