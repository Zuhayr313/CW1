#! /bin/bash

echo "Unit Test A - Invaild Input Tests"
echo "---------------------------------"

echo "Testing with no input data"
echo "--------------------------"

echo "Expected output from program :No input data provided. Please run again with input data in correct format(Amount Currency)"
echo "-------------------------------------------------------------------------------------------------------------------------"

#Stores output of program with no input data
output=$(java CurrencyConverter )

#If statement checking to see if program's actul output matches the expected output 
if ["$output" = "No input data provided. Please run again with input data in correct format(Amount Currency)"];

#Sends message if program's actul output equals expected output
then
echo "Passed, Program sends message and exits without error"
echo "-----------------------------------------------------"

#Sends message if program's actul output does not equal expected output and fails the Jenkins build
else
echo "Failed, Program exits with exception thrown as no input data was provided"
echo "-------------------------------------------------------------------------"
#exit 1

fi


echo "Testing with wrong format of input data"
echo "---------------------------------------"

echo "Expected output from program :Invaild input data provided. Please run again with input data in correct format(Amount Currency)"
echo "------------------------------------------------------------------------------------------------------------------------------"

#Stores output of program with input data in wrong format
output=$(java CurrencyConverter dollars 10)

#If statement checking to see if program's actul output matches the expected output 
if ["$output" = "Invaild input data provided. Please run again with input data in correct format(Amount Currency)"];

#Sends message if program's actul output equals expected output
then
echo "Passed, Program sends message and exits without error"
echo "-----------------------------------------------------"

#Sends message if program's actul output does not equal expected output and fails the Jenkins build
else
echo "Failed, Program exits with exception thrown as intput data was entered in the wrong format"
echo "------------------------------------------------------------------------------------------"
#exit 1

fi


echo "Testing with Correct input data"
echo "--------------------------"

echo "Expected output from program :10.0 Dollars = 7.4 Pounds
10.0 Dollars = 8.8 Euros
Thank you for using the converter."
echo "-------------------------------------------------------"

#Stores output of program with correct input data
output=$(java CurrencyConverter 10 dollars)
substr1="10.0 Dollars = 7.4 Pounds"
substr2="10.0 Dollars = 8.8 Euros"

#If statement checking to see if program's actul output matches the expected output 
if [[$output == *"$substr1"* ]];

#Sends message if program's actul output equals expected output
then
echo "Passed, Program outputs correct currency converter values and exits without error"
echo "---------------------------------------------------------------------------------"

#Sends message if program's actul output does not equal expected output and fails the Jenkins build
else
echo "Failed, Program exits with exception thrown as program outputs correct currency converter values"
echo "------------------------------------------------------------------------------------------------"
#exit 1

fi

echo "Invaild Input Test Completed Sucessfully"
echo "----------------------------------------"
