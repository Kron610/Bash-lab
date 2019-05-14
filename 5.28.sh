echo 'input filename'
read name
if test -f $name
then
	cat $name | sort | uniq -d 
else
	echo 'this file does not exist'
fi
