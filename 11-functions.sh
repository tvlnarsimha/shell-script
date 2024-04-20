#!/bin/bash

USERID=$(id -u)
VALIDATE() {
    ehco "Exit status: $1"
    echo "what are you doing: $2"

}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y

VALIDATE $? "Installing my sql"



dnf install git -y
VALIDATE $? "Installing my sql"



echo "is script proceeding?"