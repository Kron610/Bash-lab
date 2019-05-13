#!/bin/bash
echo "Enter name of file"
read name
if test -f $name
then
	touch for27
	sort -u $name > for27
	cat for27 > $name
	rm for27
	#sort -u $name|sponge $name
	exit 0		
else
	echo 'this file not exist'
	exit 1
fi
