#! /bin/bash

echo "Unit Test C - Testing Conversion Rates"
echo "--------------------------------------"

echo "Testing Dollar Conversion"
echo "-------------------------"

#Getting varaibles for dollar conversion
dOutput=$(java CurrencyConverter 1 dollars)
dSubStr1="0.74 Pounds"
dSubStr2="0.88 Euros"

#If statement checking if dollar converts correctly into pounds and euros
if [[ $dOutput == *"$dSubStr1"* ]] && [[ $dOutput == *"$dSubStr2"* ]];
then
    echo "Passed, Dollar converts correctly"
    echo "---------------------------------"
else
    echo "Failed, Dollar does not correctly convert"
    echo "-----------------------------------------"
    #exit 1
fi

echo "Testing Pound Conversion"
echo "------------------------"

#Getting varaibles for pound conversion
pOutput=$(java CurrencyConverter 1 pounds)
pSubStr1="1.36 Dollars"
pSubStr2="1.19 Euros"

#If statement checking if pound converts correctly into dollars and euros
if [[ $pOutput == *"$pSubStr1"* ]] && [[ $pOutput == *"$pSubStr2"* ]];
then
    echo "Passed, Pound converts correctly"
    echo "--------------------------------"
else
    echo "Failed, Pound does not correctly convert"
    echo "----------------------------------------"
    #exit 1
fi

echo "Testing Euro Conversion"
echo "-----------------------"

#Getting varaibles for euro conversion
eOutput=$(java CurrencyConverter 1 euros)
eSubStr1="1.13 Dollars"
eSubStr2="0.84 Pounds"

#If statement checking if euro converts correctly into dollars and pounds
if [[ $pOutput == *"$pSubStr1"* ]] && [[ $pOutput == *"$pSubStr2"* ]];
then
    echo "Passed, Euro converts correctly"
    echo "---------------------------------"
else
    echo "Failed, Euro does not correctly convert"
    echo "-----------------------------------------"
    #exit 1
fi


echo "Conversion Rates Testing Completed Sucessfully"
echo "----------------------------------------------"
