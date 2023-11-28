### This scipt will install homebrew, vscode, docker, mysql, r, rstudio, xcode-select, miniconda
cd ~/Downloads/Setup-New-Machine-main/Mac
chmod +X script.bash
./script.bash
### Create tensorflow env
Restart terminal
conda env create -f ~/Downloads/Setup-New-Machine-main/Mac/tensorflowenvironment.yml
### Activate env 
conda activate Tensorflow
conda update --all
pip install --upgrade pip
### Install tensorflow with apple silicon
conda install -c apple tensorflow-deps
pip install tensorflow-macos
pip install tensorflow-metal
### Test GPU is available or not
python3 ~/Downloads/Setup-New-Machine-main/Mac/tensorflowTestCode.py
### Create torch env
conda env create -f ~/Downloads/Setup-New-Machine-main/Mac/torchenvironment.yml
Conda activate Pytorch
conda update --all
pip install --upgrade pip
### Install pytorch with apple silicon
pip3 install torch torchvision torchaudio
### Test MPS is available or NOT
python3 ~/Downloads/Setup-New-Machine-main/Mac/torchTestCode.py
### Run the checkinstallation.sh(if permission is denided, use 'chmod +x checkinstallation.bash')
cd ~/Downloads/Setup-New-Machine-main/Mac/
chmod +x checkinstallation.sh
./checkinstallation.sh

