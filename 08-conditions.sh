#!/bin/bash
userid=$(id -u)  #here it will check if it is root / normal user

if [ $userid -ne 0]
then
    echo "error please swith to root user"
else
    echo "your are in root user"
fi

yum install mysql -y