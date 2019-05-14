echo "Enter names"
read str
echo $str | cut -f1,2,3 -d' ' | tr " " "\n" | sort | tr "\n" " "
echo 
echo $str | cut -f4- -d' ' | tr " " "\n" | sed 's/^/extra>/' 

