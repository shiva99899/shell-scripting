#!/bin/bash
read -p "which site you want to check :" site
ping -c 1 $site

if [[ $site -eq 0 ]]
then
	echo "successfully connecting to $site"
else
	echo "unable to connect $site"
fi



