#!/bin/bash

#############################################
# v1.0 of script by Brian Parker
# date 2022/2/23
#############################################

# A script that for every file in that directory you rename it to have an extension of today's date in YYYYMMDD format
dir='/home/ec2-user/scripts/activity2/*'
date=`date +%Y-%m-%d`

for file in $dir
do
  mv -- "$file" "${file%.*}.$date"
done