#!/bin/bash
userid=$(id -u)  #here it will check if it is root / normal user

validate(){
    if [ $? -ne 0 ]
    then
        echo -e "\e[31m $2 is failure \e[0m"
        exit 1
    else
        echo -e "\e[32m $2 is success \e[0m""
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


