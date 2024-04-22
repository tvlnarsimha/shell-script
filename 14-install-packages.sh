#!/bin/bash

USERID=$(id -u)
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
  echo "package to install: $4"
done