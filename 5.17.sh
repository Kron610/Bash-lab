echo "name is $0"
echo "number of arguments is $#"
while [ $# -gt 0 ]
do
	var=$1	
	size=${#var}
	echo "$1 length is $size"
	shift
done

