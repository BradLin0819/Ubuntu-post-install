#!/bin/bash

sudo apt update
sudo apt install -y `cat packages/apt` 
sudo ufw allow ssh

# python related
# upgrade python3 to python3.8
sudo apt install -y python3.8
sudo update-alternatives --install $(which python3) python3 $(which python3.8) 1

# python3 pip
sudo apt install -y python3-pip

# python3 pipenv
pip3 install pipenv

# rc file settings
git clone https://github.com/BradLin0819/dotfiles.git && mv dotfiles/ ~/
source ~/.bashrc
