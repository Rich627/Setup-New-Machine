### Setup Ubuntu Env with aarch64 Install Chrome, git, vscode, docker, python, R, rsutio, mysql, 
chmod +x script.sh
Run script.sh
### Install python for data science
conda env create -f environment.yml
source activate MachineLearning

### Install python and jupyter in vscode
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.python