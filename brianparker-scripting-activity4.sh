#!/bin/bash

#############################################
# v1.0 of script by Brian Parker
# date 2022/2/23
#############################################

# You are in charge of creating a program for the lottery in your area! The options are for numbers between 1and 50. Create a script that picks 5 for each draw plus a bonus ball number between 1 and 10. Output the numbers to a file that has the date in its name.

# Create another script that will allow users to check their lottery numbers and advise them if they match or not and how many matches they got.

echo "What is your password?"
read input
len=`expr length "$input"`
if (( $len < 8 ))
then echo "Must be 8 or more characters"; exit 1 
fi

if ! [[ $input =~ ^[0-9a-zA-Z]+$ ]]
then echo "Must contain only numbers and letters"; exit 1
fi

if ! [[ $input =~ [0-9] ]]; then
  echo "Must contain numbers"; exit 1
fi

if ! [[ "$input" =~ [[:upper:]] ]]; then
  echo "Must contain uppercase character"; exit 1
fi

if ! [[ "$input" =~ [[:lower:]] ]]; then
  echo "Must contain lowercase character"; exit 1
fi

echo "password passes"