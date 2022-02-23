#!/bin/bash

#############################################
# v1.0 of script by Brian Parker
# date 2022/2/23
#############################################

# A simple shell script to tell the user about their session

echo Your session info
echo Username: $(logname)
echo Date: `date +%Y.%m.%d`
echo Time: `date +%T`
echo Current working directory: pwd
echo "Number of files in this directory:" `ls | wc -l`
echo "Largest file by size in your directory:" `ls -S | head -n 1`