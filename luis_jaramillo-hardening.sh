#!/bin/bash

system=$(awk -F= '/^NAME/{print $2}' /etc/os-release)

if [[ $system == *"Centos"* ]];
then
    echo "Your OS is centos"
fi

if [[ $system == *"Kali"* ]];
then
    echo "Your OS is Ubuntu"
fi

