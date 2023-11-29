#!/bin/bash

# Update and Upgrade Ubuntu
sudo apt-get update && sudo apt-get upgrade

# Install Docker 
sudo apt install docker.io -y

# Install VSCode(arm64 version)
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=arm64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code:arm64

# # Install VScode(amd64 version)
# sudo snap install --classic code
# sudo apt install software-properties-common apt-transport-https wget -y
# wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
# sudo apt install code

# Install Google Chrome 
sudo apt install chromium-browser -y

# Install R 
sudo apt install r-base -y

# Install MySQL 
sudo apt install mysql-server -y

# Install vim
sudo apt install vim -y

# Install Git
sudo apt install git -y

# Install Miniconda with aarch64
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-aarch64.sh
bash Miniconda3-latest-Linux-aarch64.sh -b -p $HOME/miniconda
rm Miniconda3-latest-Linux-aarch64.sh

# Install Miniconda with amd64
# wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
# rm Miniconda3-latest-Linux-x86_64.sh




