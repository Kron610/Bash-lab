#!/bin/bash
re='^[+-]?[0-9]+([.][0-9]+)?$'
echo "Enter first parametr"
read first
	while  ! [[ $first =~ $re ]] 
        do
        echo 'Input wrong'
        read first
        done
echo -e "Select operation\n+ - * / ="
read operation
	while [ $operation != "+"] || [ $operation != "-"] || [ $operation != "*"] || [ $operation != "/"] || [ $operation != "="]
	do
	echo "Input wrong"
	read operation
	done
while [ "$operation" != "=" ]
do
echo "Enter second parametr"
read second
while  ! [[ $second =~ $re ]] 
        do
        echo 'Input wrong'
        read second
        done
case $operation in
+) let first=$first+$second ;;
-) let first=$first-$second ;;
*) let first=$first*$second ;;
/) [ $second -eq 0] && echo 'Division by zero' && exit 1
   let first=$first/$second ;;
esac
echo $first
echo "Enter next operation else enter ="
read operation
while [ $operation != "+"] || [ $operation != "-"] || [ $operation != "*"] || [ $operation != "/"] || [ $operation != "="]
        do
        echo "Input wrong"
        read operation
        done
done
echo $first
exit 0
