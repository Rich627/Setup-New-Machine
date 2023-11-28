## Setup Ubuntu Env with aarch64 
### Install Chrome, git, vscode, docker, python, R, rsutio, mysql
cd ~/Downloads/Setup-New-Machine-main/Ubuntu/
chmod +x script.sh
./script.sh
### Install python for data science
cd ~/miniconda
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
conda env create -f ~/Downloads/Setup-New-Machine-main/Ubuntu/environment.yml
source activate MachineLearning
### Install python and jupyter in vscode
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.python
### Install torch
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
### Run the checkinstallation.sh(if permission is denided, use 'chmod +x checkinstallation.bash')
cd ~/Downloads/Setup-New-Machine-main/Ubuntu/
chmod +x checkinstallation.sh
./checkinstallation.sh
Check all download is complete


# Pytorch有問題