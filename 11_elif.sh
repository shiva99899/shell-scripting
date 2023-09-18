#!/bin/bash

read -p "enter your marks: " marks

if [[ $marks -ge 80 ]]
then
   echo "1st devision"
elif [[ $marks -ge 60 ]]
then
   echo "2nd devision"
elif [[ $marks -ge 40 ]]
then
   echo "3rd devision"
else
   echo "your fail !!!!!!"
fi
