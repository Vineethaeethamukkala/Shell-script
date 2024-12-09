#!/bin/bash
userid=$(id -u)  #here it will check if it is root / normal user

validate(){
    if [ $? -ne 0 ]
    then
        echo "$2 is failure"
        exit 1
    else
        echo "$2 is sucess"
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


