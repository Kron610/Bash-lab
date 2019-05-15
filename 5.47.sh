ls | grep -v \.exe >tmp47
z=$(wc -l < tmp47)
while [ "$z" -gt 0 ] 
do 
	y=$(head -n$z tmp47|tail -1)
	if [ -x $y ]
	then
		mv $y $y.exe
	fi
	let z=z-1
done
rm tmp47
