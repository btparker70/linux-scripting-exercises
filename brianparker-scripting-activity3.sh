#!/bin/bash

#############################################
# v1.0 of script by Brian Parker
# date 2022/2/23
#############################################

# You are in charge of creating a program for the lottery in your area! The options are for numbers between 1and 50. Create a script that picks 5 for each draw plus a bonus ball number between 1 and 10. Output the numbers to a file that has the date in its name.

# Create another script that will allow users to check their lottery numbers and advise them if they match or not and how many matches they got.

echo $(( $RANDOM % 50 + 1 ))
date=`date +%Y.%m.%d`
touch $date.txt

for i in {1..5}
do
  echo $(( $RANDOM % 50 + 1 )) >> $date.txt
done
echo $(( $RANDOM % 10 + 1 )) >> $date.txt