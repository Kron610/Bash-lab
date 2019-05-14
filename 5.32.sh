echo 'you should input words, if you want to end you should input "end"'
str=""
read word
while [ "$word" != "end" ]
do
	str="$str $word"
	echo 'input next word'
	read word
done
echo $str
