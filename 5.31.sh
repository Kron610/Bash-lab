echo "Enter first parametr"
read first
echo -e "Select operation\n+ - . / ="
read operation
while [ "$operation" != "=" ]
do
echo "Enter second parametr"
read second
case $operation in
+) let first=$first+$second ;;
-) let first=$first-$second ;;
.) let first=$first*$second ;;
/) let first=$first/$second ;;
*) echo "There is no such operation" ;;
esac
echo $first
echo "Enter next operation or enter ="
read operation
done
echo $first
