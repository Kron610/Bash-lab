for(( i=1; i<=12; i++))
do
    let t=13-i
    echo ${!t}
done

# $@