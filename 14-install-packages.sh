#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "," -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE() {
    if [ $1 -ne 0 ]
    then 
      echo "$2...Failure"
      exit 1
    else
     echo "$2...success"
    fi

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

for i in $@
do
 echo "package to install: $i"
 dnf list installed $i &>>$LOGFILE
 if [ $? -eq 0]
 then
   echo "$i already installed ...SKIPPING"
else
   echo "$i not installed ...NEED TO INSTALL"
   fi
done
