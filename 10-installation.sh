#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "Please run this scriptt with root access"

else
  echo "you are the super user"
fi

