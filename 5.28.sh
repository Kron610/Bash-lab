#!/bin/bash

echo 'input filename'
read name
if test -f $name
then
	uniq -d < $name | sort 
	exit 0
else
	echo 'this file not exist'
	exit 1
fi
