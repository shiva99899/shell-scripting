#!/bin/bash
# disk space cross based on given threshold then email should be trigger

FU=$( df -H | egrep -v 'Filesystem|tmpfs' | grep "xvda3" | awk '{print $5}' | tr -d % )

#TO="shivakd2@gmail.com"

if [[ $FU -ge 15 ]]
then
	echo "Warning, disk space is low - $FU %"    ## |mail -s "Disk space ALERT !" $TO
	exit 1
else
	echo "All good"
fi


