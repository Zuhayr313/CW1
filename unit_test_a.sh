#! /bin/bash

echo "Unit Test A - Invaild Input Tests"
echo "---------------------------------"

echo "Testing with no input data"
echo "--------------------------"

#Stores the variables for no intput data
output1=$(java CurrencyConverter 2>&1)


#If statement checking to see if program's actul output matches the expected output 
if ["$output1" == "No input data provided. Please run again with input data in correct format(Amount Currency)"];

#Sends message if program's actul output equals expected output
then
echo "Passed, Program sends message and exits without error"
echo "-----------------------------------------------------"

#Sends message if program's actul output does not equal expected output and fails the Jenkins build
else
echo "Failed, Program exits with exception thrown as no input data was provided"
echo "-------------------------------------------------------------------------"
exit 1

fi


echo "Testing with wrong format of input data"
echo "---------------------------------------"

#Stores output of program with input data in wrong format
output2=$(java CurrencyConverter dollars 10 2>&1)

#If statement checking to see if program's actul output matches the expected output 
if ["$output2" == "Invaild input data provided. Please run again with input data in correct format(Amount Currency)"];

#Sends message if program's actul output equals expected output
then
echo "Passed, Program sends message and exits without error"
echo "-----------------------------------------------------"

#Sends message if program's actul output does not equal expected output and fails the Jenkins build
else
echo "Failed, Program exits with exception thrown as intput data was entered in the wrong format"
echo "------------------------------------------------------------------------------------------"
exit 1

fi

echo "Invaild Input Test Completed Sucessfully"
echo "----------------------------------------"
