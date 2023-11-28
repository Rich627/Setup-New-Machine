## Setup Win11 
### Install Chrome, vscode, docker, mssql, r, python, rstudio, mysql
Set-ExecutionPolicy RemoteSigned
./script.ps1
cd C:\Temp\

~/Downloadas/Setup-New-Machine-main/Windows/install.ps1
### Install python for data science
cd ~/miniforge
conda env create -f /environment.yml
source activate MachineLearning
### Install torch with cuda
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

### Run the checkinstallation.ps1
Use root run checkinstallation.ps1

Check all download is complete

