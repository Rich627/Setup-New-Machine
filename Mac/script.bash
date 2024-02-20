xcode-select --install
curl -O https://update.code.visualstudio.com/latest/darwin/stable
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"


mkdir -p ~/miniconda3
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

brew install --cask visual-studio-code
brew install --cask docker
brew install --cask git
brew install --cask line 
brew install --cask google-chrome
brew install --cask firefox
brew install --cask slack
brew install --cask zoom
brew install --cask notion
brew install --cask r
brew install --cask rstudio
brew install --cask mysql
brew install gcc
