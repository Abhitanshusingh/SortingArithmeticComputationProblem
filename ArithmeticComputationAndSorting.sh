#!/bin/bash -x
#Printing message
echo "Welcome to arithmetic computation problem"
#Taking input from user
read -p "Enter number: " a
read -p "Enter number: " b
read -p "Enter number: " c
#Performing arithmetic operation
operation1=`echo "scale=4; $a + $b * $c" |bc -l` 
operation2=`echo "scale=4; $a * $b + $c" |bc -l`
operation3=`echo "scale=4; $c + $a / $b" |bc -l`
operation4=`echo "scale=4; $a % $b + $c" |bc -l`
#Printing output and message
echo "a+b*c = $operation1"
echo "a*b+c = $operation2"
echo "c+a/b = $operation3"
echo "a%b+c = $operation4"
