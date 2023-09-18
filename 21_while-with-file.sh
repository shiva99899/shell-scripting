#!/bin/bash

# while with normal file
<<comment

while read myvar
do
	echo "value from file is $myvar"
done < names.txt
comment


# while loop with CSV file
<<comment
while IFS="," read id name age
do
	echo "id is $id"
	echo "name is $name"
	echo "age is $age"
done < test.csv
comment
# To eliminate first row values while print


cat test.csv | awk 'NR!=1{print}' | while IFS="," read id name age

do
	echo "-e"
	echo "id is $id"
	echo "name is $name"
	echo "age is $age"
done 

