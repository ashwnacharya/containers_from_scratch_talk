#!/bin/bash

pushd ~

mkdir test

mkdir test/upper test/lower test/work test/merged

echo "This is in lower" > test/lower/lower_1.txt

echo "This is in upper" > test/upper/upper_1.txt

echo "This is in lower" > test/lower/both_1.txt

echo "This is in upper" > test/upper/both_1.txt

sudo mount -t overlay overlay -o \
    lowerdir=/home/vagrant/test/lower,upperdir=/home/vagrant/test/upper,workdir=/home/vagrant/test/work \
    /home/vagrant/test/merged
