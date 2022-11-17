#! /bin/bash

echo "Unit Test C - Testing Conversion Rates"
echo "--------------------------------------"

echo "Testing Dollar Conversion"
echo "-------------------------"

output=$(java CurrencyConverter 1 dollar)
substr1="0.74 Pounds"
substr2="0.88 Euros"

echo $output

if [[ $output == *"$substr1"* ]];
then
    echo "Passed, Dollar converts correctly"
    echo "---------------------------------"
else
    echo "Failed, Dollar does not correctly convert"
    echo "-----------------------------------------"
    #exit 1
fi

str="hello world"
substr="world"
if [[ $str == *"$substr"* ]];
then
    echo "String contains substring."
else
    echo "String does not contain substring."
fi

echo "Conversion Rates Testing Completed Sucessfully"
echo "----------------------------------------------"
