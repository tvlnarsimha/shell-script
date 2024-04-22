#!/bin/bash

USERID=$(id -u)
VALIDATE(){
   if [ $? -ne 0 ]
    then
      echo "$1 ...Failure"
      exit 1
    else
     echo "$1 ...Success"
   fi


}
if [ $USERID -ne 0 ]
then
 echo "Please run this script with root access"
 exit 1 # manually exit if error comes
else
 echo "you are the super user"
fi

dnf install mysql -y
VALIDATE $? "Installing mysql"


dnf install git -y
VALIDATE $? "Installing git"

