#!/bin/bash

echo 'you should input words, if you want to end you should input "end"'
touch for32
read word
while [ "$word" != "end" ]
do
	echo $word >>for32
	echo 'input next word'
	read word
done
cat for32
rm for32
exit 0
