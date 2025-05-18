#!/bin/bash

userid=$(id -u)
if [ $userid -eq 0]
then
    echo " you are running with root access good to go "
else
    echo " ERROR : please run script with root access "
    exit 1
fi

dnf list installed mysql
# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true

if [ $? -ne 0 ]
then
   echo " mysql is not installed we are installing it "
   dnf install mysql -y
   if [ $? -eq 0]
   then
        echo " mysql is successss ... "
    else
        echo " mysql is failure .... "
    fi
else
    echo " mysql is already installed nothing to do "
fi
