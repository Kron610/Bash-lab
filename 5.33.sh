#!/bin/bash

echo 'you should input words, if you want to end you should input "end"'
touch for33
read word
while [ "$word" != "end" ]
do
	echo $word >>for33
	echo 'input next word'
	read word
done
sort < for33
rm for33
exit 0
