#!/bin/bash
free_space=$(free -mt | grep "Total" | awk '{print $4}')
TH=500
if [[ $free_space -lt $TH ]]
then
	echo "Warning, RAM is running low"
else
	echo "RAM space is sufficient - $free_space M"
fi

