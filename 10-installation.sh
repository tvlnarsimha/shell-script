#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
 echo "Please run this script with root access"
 exit  # manually exit if error comes
else
 echo "you are the super user"
fi

dnf install mysql -y

echo "is script proceeding?"