#!/bin/bash

# 更新軟件源
sudo apt update

# 升級所有已安裝的軟件
sudo apt upgrade -y

# 安裝軟件
sudo apt install -y git vim curl

# 安裝Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f

# 清理不再需要的軟件包
sudo apt autoremove -y

chmod +x setup.sh

./setup.sh
