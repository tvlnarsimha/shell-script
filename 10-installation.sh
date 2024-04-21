#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
 echo "Please run this script with root access"
else
 echo "you are the super user"
fi

dnf install mysql -y