### Run the script.bash
This scipt will install vscode, docker, mysql, r, rstudio, xcode-select, miniconda
### Change path and install ds package 
cd /Applications/miniconda3
conda env create -f environment.yml
### Install pytorch with apple silicon
pip3 install torch torchvision torchaudio
