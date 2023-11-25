### Run the script.bash
This scipt will install homebrew, vscode, docker, mysql, r, rstudio, xcode-select, miniconda
### Change path and install ds package 
Restart terminal
cd ~/miniconda3
conda env create -f Mac/Tensorflow with apple silicon/ReadMe.md
### Activate env 
conda activate Tensorflow
conda update --all
pip install --upgrade pip
### Install tensorflow with apple silicon
conda install -c apple tensorflow-deps
pip install tensorflow-macos
pip install tensorflow-metal
### Test GPU is available or not
python3 Mac/Tensorflow with apple silicon/tensorflowTestCode.py

