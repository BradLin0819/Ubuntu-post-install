#!/bin/bash

sudo apt update
sudo apt install -y `cat packages/apt` 
sudo ufw allow ssh

# python related

# python3 pip
sudo apt install -y python3-pip python-pip

# install pipenv
sudo -H pip install -U pipenv

# rc file settings
git clone https://github.com/BradLin0819/dotfiles.git && mv dotfiles/ ~/ && \
cp ~/dotfiles/.* ~/ 2> /dev/null
source ~/.bashrc
