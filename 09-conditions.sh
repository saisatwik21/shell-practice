#!/bin/bash
echo " conditions "
echo " enter 1st number "
read num1
echo "enter 2nd number "
read num2

if [ $num1 -gt $num2 ]
then
    echo " $num1 is greater than $num2 "
else
    echo " $num2 is greater than $num1 "
fi
