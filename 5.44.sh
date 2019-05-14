mkdir text 2> /dev/null
ls | grep \.txt > tmp44
x=$(wc -l < tmp44)
while [ "$x" -gt 0 ] 
do 
	y=$(head -n$x tmp44|tail -1)
	mv $y text
	let x=x-1
done
rm tmp44
