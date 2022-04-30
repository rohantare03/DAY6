echo " Table of powers of 2: "

i=1
while (( $i<=8 ))
do
        z=$((2**$i))
        ((i++))
        echo " Table of powers of 2 is $z"
done
