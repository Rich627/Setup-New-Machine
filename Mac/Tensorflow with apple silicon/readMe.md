### Run the script.bash
This scipt will install homebrew, vscode, docker, mysql, r, rstudio, xcode-select, miniconda
### Change path and install ds package 
Restart terminal
cd ~/miniconda3
conda env create -f environment.yml
conda activate Tensorflow
conda intsall python=3.9
conda update -all
pip install --upgrade pip
### Install tensorflow with apple silicon
conda install -c apple tensorflow-deps
pip install tensorflow-metal

