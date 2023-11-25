/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#!/bin/bash

# 更新 Homebrew
brew update

# 安裝軟件
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask adobe-acrobat-reader


chmod +x install_software.sh
./install_software.sh

