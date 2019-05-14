echo 'input 5 numbers'
z=0
for x in 1 2 3 4 5
do
	read y
	let z=$z+$y
done
echo " summ is $z "
