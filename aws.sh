#!/bin/bash
echo -e "\033[92m<<<<<<<<<<<<<<<<<<<   Installing AWScli!!... >>>>>>>>>>>>>>>>>>>>>\033[0m\n\n"
sudo apt update
if [ "$(which aws 2>/dev/null)" ]
then
    echo " AWS Cli is already installed"
    exit
else
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    which aws
fi