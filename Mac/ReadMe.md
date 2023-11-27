### Run the script.bash(if permission is denided, use 'chmod +x script.bash')
This scipt will install homebrew, vscode, docker, mysql, r, rstudio, xcode-select, miniconda
### Create tensorflow env
Restart terminal
cd ~/miniconda3
conda env create -f ~/Download/Setup-New-Machine/Mac/tensorflowenvironment.yml
### Activate env 
conda activate Tensorflow
conda update --all
pip install --upgrade pip
### Install python and jupyter in vscode
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.python
### Install tensorflow with apple silicon
conda install -c apple tensorflow-deps
pip install tensorflow-macos
pip install tensorflow-metal
### Test GPU is available or not
python3 Mac/Tensorflow with apple silicon/tensorflowTestCode.py

### Create torch env
cd ~/miniconda3
conda env create -f ~/Download/Setup-New-Machine/Mac/torchenvironment.yml
Conda activate Pytorch
conda update --all
pip install --upgrade pip
### Install python and jupyter in vscode
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.python
### Install pytorch with apple silicon
conda install pytorch::pytorch torchvision torc haudio -с pytorch
### Test MPS is available or NOT
chmod +x Mac/torch with apple silicon/torchTestCode.py
Mac/torch with apple silicon/torchTestCode.py
### Run the checkinstallation.sh(if permission is denided, use 'chmod +x checkinstallation.bash')
Check all download is complete

