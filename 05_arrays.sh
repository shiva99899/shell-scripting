#!/bin/bash

#array
myarray=( 1 5 20 15.5 hello "hey man!" )

echo "all the values in array are ${myarray[*]}"
echo "values of 3rd index is ${myarray[3]}"

#how to find no. of values in an array
echo "No. of values, length of an array is ${#myarray[*]}"

echo "values from index 2-3 are ${myarray[*]:2:2}"

#updating array with new values

myarray+=( new 30 40 )

echo "including updating values are ${myarray[*]}"
