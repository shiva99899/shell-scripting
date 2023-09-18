


#!/bin/bash

file="/home/ec2-user/names.txt"
for name in $(cat $file)
do
	echo "name is $name"
done
