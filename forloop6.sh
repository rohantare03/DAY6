read -p " Enter a number : " N

for (( i=1; i<=$N ; i++ ))
do
        echo $i | factor
done
