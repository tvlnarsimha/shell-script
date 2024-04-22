#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
VALIDATE(){
   if [ $? -ne 0 ]
    then
      echo "$? ...Failure"
      exit 1
    else
     echo "$? ...Success"
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

