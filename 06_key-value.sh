#!/bin/bash

#how to store the key values pairs

declare -A myarray
myarray=( [name]=shiva [age]=29 [city]=gdk )

echo "Name is ${myarray[name]}"
echo "city which am living in ${myarray[city]}"
