#!/bin/bash
scriptname=$0
date=$(date "+%F %h:%M:%S")
logfile=/tmp/$scriptname.$date
for i in $@
do
    yum install $i -y &>>$logfile
done