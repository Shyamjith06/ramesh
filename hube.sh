#!/bin/bash
echo -e "\033[92m<<<<<<<<<<<<<<<<<<<   Installing Kubectl for kubernetes version 1.20 !!... >>>>>>>>>>>>>>>>>>>>>\033[0m\n\n"
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.20.4/2021-04-12/bin/linux/amd64/kubectl
chmod +x ./kubectl
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bash_profile
