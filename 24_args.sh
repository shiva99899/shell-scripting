#!/bin/bash
<<comment
To get No.of arguments : $#
To get All of argument : $@
To use or display a arguments: $1 $2 $3
comment

#To access the arguments
echo "first argument is $1"
echo "Second argument is $2"
echo "get all arguments are $@"
echo "get no.of arguments are $#"

#for loop to access then values from arguments

for file in $@
do
	echo "copying file is - $file"
done
