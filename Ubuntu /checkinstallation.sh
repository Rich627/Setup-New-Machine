#!/bin/bash

# Function to check if a command exists
check_command() {
  if command -v $1 &> /dev/null
  then
    echo "$1 installed"
  else
    echo "$1 NOT installed"
  fi
}

# Check Docker
check_command docker

# Check VSCode
check_command code

# Check Google Chrome
check_command chromium-browser

# Check R
check_command R

# Check MySQL
check_command mysql

# Check Git
check_command git

# Check Miniforge
if [ -d "$HOME/miniforge" ]; then
  echo "Miniforge installed"
else
  echo "Miniforge NOT installed"
fi

# Script check completion
echo "All checks completed."
