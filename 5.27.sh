echo "Enter name of file"
read name
if test -f $name
then
	cat $name | sort -u
else
	echo 'this file does not exist'
fi
