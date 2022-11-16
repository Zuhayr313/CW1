#! /bin/bash

echo "Unit Test A - Invaild Input Tests"

echo "Testing with no input data"

output=$(java CurrencyConverter )

status=$?

if [$status -eq 0];

then
echo "Passed, Program exits without error"

else
echo "Failed, Program exits with exception thrown as no input data was provided"
exit 1

fi

echo "Testing with wrong format of input data"

output=$(java CurrencyConverter dollars 10)

if ["$output" = "Invaild input data provided. Please run again with input data in correct format(Amount Currency Name)"];

then
echo "Passed, Program exits without error"

else
echo "Failed, Program exits with exception thrown as intput data was entered in the wrong format/order"
exit 1

fi

echo "Invaild Input Test Completed Sucessfully"
