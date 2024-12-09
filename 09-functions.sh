#!/bin/bash
userid=$(id -u)  #here it will check if it is root / normal user
R=\e[31m
G=\e[32m
N=\e[0m

validate(){
    if [ $? -ne 0 ]
    then
        echo -e "$R $2 is failure $N"
        exit 1
    else
        echo -e "$G $2 is success $N"
    fi

}

if [ $userid -ne 0 ]
then
    echo "error please swith to root user"
    exit 1
else
    echo "your are in root user"
fi

yum install mysql -y

validate $? "mysql installation"

amazon-linux-extras install nginx1 -y

yum install nginx -y

validate $? "nginx installation"


