#!/bin/bash
echo -e "\033[92m<<<<<<<<<<<<<<<<<<<   Installing Unzip!!... >>>>>>>>>>>>>>>>>>>>>\033[0m\n\n"
sudo apt update
if [ "$(which unzip 2>/dev/null)" ]
then
    echo " Unzip is already installed"
else
    sudo apt-get install unzip
echo -e "\033[92m<<<<<<<<<<<<<<<<<<<   Installing tfenv!!... >>>>>>>>>>>>>>>>>>>>>\033[0m\n\n"
fi
if [ "$(which tfenv 2>/dev/null)" ]
then
    echo " tfenv is already installed "
    exit
else
    git clone https://github.com/tfutils/tfenv.git ~/.tfenv
    echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
    sudo ln -s ~/.tfenv/bin/* /usr/local/bin
    mkdir -p ~/.local/bin/
    . ~/.profile
    ln -s ~/.tfenv/bin/* ~/.local/bin
    tfenv install 0.12.31
    tfenv use 0.12.31
fi