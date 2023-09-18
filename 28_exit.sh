#!/bin/bash
# to access the arguments

if [[ $# -eq 0 ]]
then
	echo "please provide atleast one argument?"
	exit 1
fi
echo "First argument is: $1"
echo "Second argument is: $2"

echo "All argument are $@"
echo "No. of arguments are $#"

#for loop to access the values from argument
for file in $@
do
	echo "copying file is - $file"
done
