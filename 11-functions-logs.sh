#!/bin/bash
scriptname=$0
date=$(date "+%F %H:%M:%S")
logfile=/tmp/$scriptname-$date.log
userid=$(id -u)
validate(){
    if [ $userid -ne 0 ]
    then
        echo -e "\e[31m please switch to root user"
    else
        echo -e "\e[32m you are in root user"
}

if [ $? -ne 0 ]
then
    echo -e "\e[31m $2 .. failure"
else
    echo -e "\e[32m $2 ... success"

yum install mysql -y &>>$logfile
validate $? "mysql installion"
