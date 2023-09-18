#!/bin/bash

myvar="Hello Buddy, How are you?"

myvarLength=${#myvar}
echo "Length of the myvar is $myvarLength"

echo "Upper case is ----${myvar^^}"
echo "lower case is ---- ${myvar,,}"

#To replace a string
newvar=${myvar/Buddy/shiva}
echo "updated variable is $newvar"

#To slice a string
echo "After slice ${myvar:6:6}"
