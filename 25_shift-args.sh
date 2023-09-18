#!/bin/bash
#To create a user provide username & description

echo "creating user-------"
echo "--------------------"
echo "Username is $1"
#echo "description is $2"

#if you want to pass the remaining values as 2nd paraeter then

shift
echo "descrition is $@"

