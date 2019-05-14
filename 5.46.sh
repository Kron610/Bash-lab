ls | grep a."/.doc" |cut -f1 -d"." >tmp46
x=$(wc -l < tmp46)
while [ "$x" -gt 0 ] 
do 
	y=$(head -n$x tmp46|tail -1)
	mv $y.doc $y.text
	let x=x-1
done
rm tmp46
