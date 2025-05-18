#!/bin/bash
userID=$(id -u)
if [ $userID -ne 0]
then
    echo "ERROR ::: please run the script with root access "
    exit 1
else
    echo " you are running the script with the root access "

VALIDATE(){
    if [ $1 -eq 0 ]
    then
        echo " $2 is sucessss "
    else
        echo " $2 is failureeee "
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo " MySQL is not installed... going to install it "
    dnf install mysql -y
    VALIDATE $? mysql
else
    echo " MySQL is already installed...Nothing to do "
fi

dnf list installed python3
if [ $? -ne 0 ]
then 
    echo " python is not installed .... going to install it "
    dnf install python3 -y
    VALIDATE $? python3
else
    echo " python is already installed northing to do ................."

fi

dnf list installed nginx
if [ $? -ne 0 ]
then
    echo " nginx is not installed .... going to install it "
    dnf install nginx -y
    VALIDATE $? nginx
else
    echo " nginx is already installed "
fi