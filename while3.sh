head=0
tail=0

while (( head != 11 && tail != 11 ))
do

        toss=$((RANDOM%2))
        if [ $toss -eq 0 ]
        then
                echo "Heads"
                (( head++ ))
        else
                echo " Tails"
                (( tail++ ))
        fi
        echo "Head wins $head times and Tail wins $tail times"
done
