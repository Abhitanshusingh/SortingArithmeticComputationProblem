#!/bin/bash -x
#Printing message
echo "Welcome to arithmetic computation problem"
declare -A Arithmetic
#Taking input from user
read -p "Enter number: " a
read -p "Enter number: " b
read -p "Enter number: " c
#Performing arithmetic operation
operation1=`echo "scale=4; $a + $b * $c" |bc -l`
Arithmetic[1]="$operation1"
operation2=`echo "scale=4; $a * $b + $c" |bc -l`
Arithmetic[2]="$operation2"
operation3=`echo "scale=4; $c + $a / $b" |bc -l`
Arithmetic[3]="$operation3"
operation4=`echo "scale=4; $a % $b + $c" |bc -l`
Arithmetic[4]="$operation4"
#Storing dictionary value into array
for iterator in ${!Arithmetic[@]}
do
	array[$iterator]="${Arithmetic[$iterator]}"
done
#Printing array value
echo "Array value is : ${array[@]}"
