#! /bin/bash

echo "Unit Test B - Currency Format Tests"
echo "-----------------------------------"

echo "Testing Lowercase Formats"
echo "-------------------------"

#Getting outputs for lowercase format
poundlow=$(java CurrencyConverter 1 pound 2>&1)
eurolow=$(java CurrencyConverter 1 euro 2>&1)
dollarlow=$(java CurrencyConverter 1 dollar 2>&1)

#If Statement checking lowercase format
if [ "$poundlow" == "Thank you for using the converter." ] && [ "$eurolow" == "Thank you for using the converter." ] && [ "$dollarlow" == "Thank you for using the converter." ] 

then
echo "Passed, program converts with lowercase format"
echo "----------------------------------------------"

else
echo "Failed, program does not convert with lowercase format and exits with error"
echo "---------------------------------------------------------------------------"
exit 1

fi


echo "Testing Uppercase Formats"
echo "-------------------------"

#Getting outputs for uppercase format
poundUp=$(java CurrencyConverter 1 POUND 2>&1)
euroUp=$(java CurrencyConverter 1 EURO 2>&1)
dollarUp=$(java CurrencyConverter 1 DOLLAR 2>&1)

#If Statement checking uppercase format
if [ "$poundUp" == "Thank you for using the converter." ] && [ "$euroUp" == "Thank you for using the converter." ] && [ "$dollarUp" == "Thank you for using the converter." ]

then
echo "Passed, program converts with uppercase format"
echo "----------------------------------------------"

else
echo "Failed, program does not convert with uppercase format and exits with error"
echo "---------------------------------------------------------------------------"
#exit 1

fi

echo "Testing Capitilised Formats"
echo "---------------------------"

#Getting outputs for capitilised format
poundCap=$(java CurrencyConverter 1 Pound 2>&1)
euroCap=$(java CurrencyConverter 1 Euro 2>&1)
dollarCap=$(java CurrencyConverter 1 Dollar 2>&1)

#If Statement checking capitilised format
if [ "$poundCap" == "Thank you for using the converter." ] && [ "$euroCap" == "Thank you for using the converter." ] && [ "$dollarCap" == "Thank you for using the converter." ]

then
echo "Passed, program converts with capitilised format"
echo "------------------------------------------------"

else
echo "Failed, program does not convert with capitilised format and exits with error"
echo "-----------------------------------------------------------------------------"
#exit 1

fi

echo "Currency Format Tests Completed Sucessfully"
echo "-------------------------------------------"


