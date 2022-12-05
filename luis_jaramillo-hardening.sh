#!/bin/bash

system=$(awk -F= '/^NAME/{print $2}' /etc/os-release)

if [[ $system == *"Centos"* ]];
then
        echo "Your OS is centos"
        echo "installing epel repositories." yum install epel-release
        echo cho "updating and upgrading the server..." yum update -y  && yum upgrade -y 
        echo "installing clamav antivirus..." yum install clamav

fi

if [[ $system == *"Ubuntu"* ]];
then
        echo "Your OS is Ubuntu"
        echo "updating and upgrading the server..." yum update -y  && yum upgrade -y
        echo "installing clamav antivirus..." yum install clamav
fi

