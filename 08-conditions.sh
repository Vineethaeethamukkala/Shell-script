#!/bin/bash
userid=$(id -u)  #here it will check if it is root / normal user

if [ $userid -ne 0 ]
then
    echo "error please swith to root user"
    exit 1
else
    echo "your are in root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installation mysql is failure"
    exit 1
else
    echo "installation of mysql is sucess"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installation nginx is failure"
    exit 1
else
    echo "installation of nginx is sucess"
fi

