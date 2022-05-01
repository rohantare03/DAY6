read -p " Enter a number : " num
function prime ()
{
for((i=2; i<=num/2; i++))
do
        if [ $((num%i)) -eq 0 ]
        then
                echo "$num is not a prime number"
        exit
        fi
done
echo "$num is a prime number"
}
prime $num

read -p "Enter a number : " n

function palindrome() {
        no=$n
        rev=0
        while(( n > 0 ))
        do
                rem=$((n % 10))
                rev=$((rev*10 + rem))
                n=$((n/10))
        done
        echo $rev
}
if [ $no -eq $rev ]
then
        echo "Palindrome"
else
        echo "Not Palindrome"
fi

p=`palindrome $n`
echo $p

