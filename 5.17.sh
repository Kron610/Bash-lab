echo "name is $0"
echo "number of arguments is $#"
while [ $# -gt 0 ]
do	
	size=$(expr length "$1")
	echo "$1 $size"
	shift
done

