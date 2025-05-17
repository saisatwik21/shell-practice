#!/bin/bash

echo "data types and  how we can execute the command store it in variable"

echo "enter first number "
read num1
echo "enter 2nd number "
read num2
sum=$(($num1+$num2))
timestamp=$(date)
echo " The script executed at time : $timestamp "

echo " sum of $num1 and $num2 is $sum "