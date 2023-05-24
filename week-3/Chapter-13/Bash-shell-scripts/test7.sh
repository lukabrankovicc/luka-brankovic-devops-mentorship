#!/bin/bash

for file in /home/luka/.b* /home/luka/badtest
do
	if [ -d "$file" ]
	then
		echo "$file is a directory"
	elif [ -f "$file" ] 
	then
		echo "$file is a file"
	else
		echo "$file doesn't exist"
	fi
done
