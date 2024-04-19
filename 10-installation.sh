#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "Please run this scriptt with root access"
  exit 1 # manually exit if error comes
else
  echo "you are the super user"
fi

dnf install mysqll -y

if [$? -ne 0 ]
then
  echo "Installation of mysql...failure"
  exit 1
fi 

dnf install git -y

 echo "is script proceeding"

