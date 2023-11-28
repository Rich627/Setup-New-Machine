## Setup Win11 
### Install Chrome, vscode, docker, mssql, r, python, rstudio, mysql
Set-ExecutionPolicy RemoteSigned
注意路徑
Use root run ./script.ps1
cd C:\Temp\
注意路徑
./install.ps1
### Install python for data science
cd ~/miniforge
注意路徑
conda env create -f /environment.yml
source activate MachineLearning

### Install python and jupyter in vscode
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.python

### Run the checkinstallation.ps1
Use root run checkinstallation.ps1

Check all download is complete


docker網址錯誤
r, rstusio沒裝到