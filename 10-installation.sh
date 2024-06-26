#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
 echo "Please run this script with root access"
 exit 1 # manually exit if error comes
else
 echo "you are the super user"
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
  echo "installation of mysql...failure"
  exit 1
else
  echo "installation of mysql...success"

fi

dnf install git -y
if [ $? -ne 0 ]
then
  echo "installation of git...failure"
  exit 1
else
  echo "installation of git...success"
fi

echo "is script proceeding?"