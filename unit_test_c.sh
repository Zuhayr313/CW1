#! /bin/bash

echo "Unit Test C - Testing Conversion Rates"
echo "--------------------------------------"

echo "Testing Dollar Conversion"
echo "-------------------------"

output=$(java CurrencyConverter 1 dollar)
substr1="0.74 Pounds"
substr2="0.88 Euros"


if [[ "$output" == *"$substr1"* ]];
then
    echo "Passed, Dollar converts correctly"
    echo "---------------------------------"
else
    echo "Failed, Dollar does not correctly convert"
    echo "-----------------------------------------"
    exit 1
fi

echo "Conversion Rates Testing Completed Sucessfully"
echo "----------------------------------------------"
