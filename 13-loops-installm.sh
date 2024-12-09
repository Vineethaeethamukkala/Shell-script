#!/bin/bash
scriptname=$0
date=$(date "+%F %H:%M:%S")
logfile=/tmp/$scriptname.$date.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

validate() {   
    
    if [ $? -ne 0 ]
    then
        echo "$2 $R .. filure $N"
    else
        echo "$2 $G .. Success $N"
}

userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "switch to root user"
    exit 1
else
    echo "you are in root user"

for i in $@
do
    yum install $i -y &>>$logfile
    exit 1
done
validate $? "$i installation"