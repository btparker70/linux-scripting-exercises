#!/bin/bash

# rename 15 files
search_dir=/home/ec2-user/scripts
for entry in "$search_dir"/*
do
  mv *.txt *.sh
done