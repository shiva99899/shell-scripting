


#!/bin/bash

myarray=( 1 2 5 hi hello )

length=${#myarray[*]}

for (( i=0;i<length;i++ ))
do
	echo "values of array is ${myarray[$i]}"
done
