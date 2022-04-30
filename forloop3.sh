read -p "Enter a range of numbers " num
count=0

for((n=2; n<=$num; n++))
do
        c=1
for((i=2; i<$n; i++))
do
        if (($n%i==0))
        then
        #echo "$n is not a prime number"
        c=0
        break;
        fi
done
        if [ $c == 1 ]
        then
        echo "$n is a prime number"
        count=`expr $count + 1`
        fi
done
echo " Total prime numbers upto $num are $count "
