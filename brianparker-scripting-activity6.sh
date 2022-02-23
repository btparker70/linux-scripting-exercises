#!/bin/bash

#############################################
# v1.0 of script by Brian Parker
# date 2022/2/23
#############################################

# A script that takes a number as an input and reverses it out to the user

echo "Check if your first number is larger than the second."
echo "First number"
read num1
  if ! [[ "$num1" =~ ^[0-9]+$ ]] ; 
  then exec >&2; echo "error: Not a number"; exit 1
  fi
echo "Second number"
read num2
  if ! [[ "$num2" =~ ^[0-9]+$ ]] ; 
  then exec >&2; echo "error: Not a number"; exit 1
  fi

if [ $num1 > $num2 ]
then
  echo True
else
  echo False
fi

difference=$(( $num1 - $num2 ))
if (( $difference < 0 ))
then
  newDifference=$(( $difference * -1 ))
  echo "The difference between the two numbers:" $newDifference
else
  echo "The difference between the two numbers:" $difference
fi
