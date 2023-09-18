#!/bin/bash

#And operator

read -p "Enter your age: " age
read -p "Enter your nationality: " country

if [[ $age -ge 18 ]] && [[ $country == "india" ]]
then
	echo "you can vote"
else
	echo "you can't vote!!!"
fi
