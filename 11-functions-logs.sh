#!/bin/bash
scriptname=$0
date=$(date "+%F %H:%M:%S")
logfile=/tmp/$scriptname-$date.log
userid=$(id -u)

validate() {
    if [ $? -ne 0 ]
    then
       echo -e "\e[31m $2 .. failure \e[0m"
    else
    echo -e "\e[32m $2 ... success \e[0m"

    fi
}
if [ $userid -ne 0 ]
then
    echo -e "\e[31m please switch to root user \e[0m"
else
    echo -e "\e[32m you are in root user \e[0m"
fi

yum install myysql -y &>>$logfile
validate $? "mysql installion"
