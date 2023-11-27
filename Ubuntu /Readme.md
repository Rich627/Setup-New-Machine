#
# Setup Ubuntu Env with aarch64 
### Install Chrome, git, vscode, docker, python, R, rsutio, mysql, 
chmod +x script.sh
注意路徑
./script.sh
### Install python for data science
cd ~/miniconda
注意路徑
echo 'export PATH="$HOME/miniforge3/bin:$PATH"' >> ~/.bashrc

source .bashrc
conda env create -f 'SETUP-NEW-MACHINE/Ubuntu/environment.yml'
source activate MachineLearning

### Install python and jupyter in vscode
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.python

### Run the checkinstallation.sh(if permission is denided, use 'chmod +x checkinstallation.bash')
chmod +x checkinstallation.sh
./checkinstallation.sh
Check all download is complete


https://ubuntu.com/tutorials/ubuntu-desktop-aws#4-aws-configuration