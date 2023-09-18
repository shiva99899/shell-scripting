#!/bin/bash

echo "provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c for check the current locatin"

read choice

case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Please provide a valid value"
esac
