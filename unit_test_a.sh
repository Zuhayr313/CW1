#! /bin/bash

echo "Unit Test A - Invaild Input Tests"
echo "---------------------------------"

echo "Testing with no input data"
echo "--------------------------"

output=$(java CurrencyConverter 10 dollars )

if ["$output" = "No Input Data Provided"];

then
echo "Passed, Program exits without error"
echo "-----------------------------------"

else
echo "Failed, Program exits with exception thrown as no input data was provided"
echo "-------------------------------------------------------------------------"
exit 1

fi

echo "Testing with wrong format of input data"
echo "---------------------------------------"

output=$(java CurrencyConverter dollars 10)

if ["$output" = "Invaild input data provided. Please run again with input data in correct format(Amount Currency Name)"];

then
echo "Passed, Program exits without error"
echo "-----------------------------------"

else
echo "Failed, Program exits with exception thrown as intput data was entered in the wrong format/order"
echo "------------------------------------------------------------------------------------------------"
exit 1

fi

echo "Invaild Input Test Completed Sucessfully"
echo "----------------------------------------"
