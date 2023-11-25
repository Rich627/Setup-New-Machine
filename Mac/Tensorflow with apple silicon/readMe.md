### Run the script.bash
This scipt will install homebrew, vscode, docker, mysql, r, rstudio, xcode-select, miniconda
### Change path and install ds package 
cd /Applications/miniconda3
conda env create -f environment.yml
### Install tensorflow with apple silicon
conda install -c apple tensorflow-deps
pip install tensorflow-metal
