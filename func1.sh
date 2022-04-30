fahrenheit_to_celsius ()
{
        farhenheit=$1
        celsius=`echo $fahrenheit | awk '{print (($1 -32) * 5/9)}'`;
        echo "$fahrenheit  fahrenheit = $celsius celsius"
}
celsius_to_fahrenheit ()
{
        celsius=$1
        fahrenheit=`echo $celsius | awk '{print (($1 * 9/5) +32)}'`;
        echo "$celsius celsius = $fahrenheit fahrenheit"
}
echo "Select the option"
echo "1.degF to degC"
echo "2.degC to degF"
read option

case $option in
        1)
        read -p "Enter temperature in fahrenheit(with in fp and bp of water):" fh
        if (( fh > 32 && fh < 212 ))
        then
                fahrenheit_to_celsius $fh
        else
                echo "Entered temperature is not within freezing point and boiling point of water"
        fi
        ;;
        2)
        read -p "Enter temperature in celsius(with in fp and bp of water):" cs
        if (( cs > 0 && cs < 100 ))
        then
                celsius_to_fahrenheit $cs
        else
                echo "Entered temperature is not within freezing point and boiling point of water"
        fi
        ;;
        *)
        echo "please select either option 1 or option 2"
        ;;
esac

