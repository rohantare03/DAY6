read -p " Enter a number : " num

echo " Table of powers of 2:"

for (( i=1; i<=$num; i++ ))
do
        z=$((2**$i))
        echo "Table of powers of 2 is : $z"
done
