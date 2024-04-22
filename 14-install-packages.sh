#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
   if [ $1 -ne 0 ]
    then
      echo -e "$2 ...$R Failure $N"
      exit 1
    else
     echo -e "$2...$G Success $N"
   fi
}
if [ $USERID -ne 0 ]
then
 echo "Please run this script with root access"
 exit 1 # manually exit if error comes
else
 echo "you are the super user"
fi

echo "All packages :$@"

for i in $@
do
  echo "package to install: $i"
  dnf list installed $i &>>$LOGFILE
  if [ $? -eq 0 ]
  then
   echo -e "$i already installed...$Y SKIPPING $N"
  else
   dnf install $i -y &>>$LOGFILE
   VALIDATE $? "Installation of $i"
    
  fi


done