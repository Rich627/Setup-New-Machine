#!/bin/bash

# 函數來檢查命令是否存在
check_command() {
  if command -v $1 &> /dev/null
  then
    echo "$1 installed"
  else
    echo "$1 NOT installed"
  fi
}

# 檢查開發工具
check_command xcode-select
check_command curl
check_command bash
check_command git

# 檢查Miniconda
if [ -d "$HOME/miniconda3" ]; then
  echo "Miniconda installed"
else
  echo "Miniconda NOT installed"
fi

# 檢查通過Homebrew安裝的應用程序
check_command docker
check_command code
check_command google-chrome
check_command firefox
check_command slack
check_command zoom
check_command notion
check_command R
check_command rstudio
check_command mysql

# 檢查腳本結束
echo "All checks completed."
