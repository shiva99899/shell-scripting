#!/bin/bash

#maths calculation
x=10
y=2

let mul=$x*$y
echo "$mul"

let sum=$x+$y
echo "$sum"

echo "substation value is $(($x-$y))"
