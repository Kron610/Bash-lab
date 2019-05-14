echo 'you should input words, if you want to end you should input "end"'
read word
while [ "$word" != "end" ]
do
	echo $word
	read word
done | sort
