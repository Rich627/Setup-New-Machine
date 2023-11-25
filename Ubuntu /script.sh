#!/bin/bash

# Update and Upgrade Ubuntu
sudo apt-get update && sudo apt-get upgrade

# # Install Docker 
sudo apt install docker.io -y

# Install VSCode 
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=arm64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code:arm64

# Install Google Chrome 
sudo apt install chromium-browser -y

# Install R 
sudo apt install r-base -y

# Install MySQL (Make sure to select the ARM64 package)
sudo apt install mysql-server -y

# Install Git
sudo apt install git -y

# Get Miniforge and make it the main Python interpreter
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-aarch64.sh -O ~/miniforge.sh
bash ~/miniforge.sh -b -p ~/miniforge
rm ~/miniforge.sh
echo "PATH=$PATH:$HOME/miniforge/bin" >> .bashrc
source .bashrc

