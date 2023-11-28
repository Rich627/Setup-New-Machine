## Setup Win11 
### Install Chrome, vscode, docker, mssql, r, python, rstudio, mysql
Set-ExecutionPolicy RemoteSigned
./script.ps1
cd C:\Temp\

~/Downloadas/Setup-New-Machine-main/Windows/install.ps1
### Setup Conda
在 Windows 搜索栏输入“环境变量”并选择“编辑系统环境变量”。
在系统属性窗口中，点击“环境变量”。
在“系统变量”区域，找到并编辑 Path 变量。
点击“新建”并添加 C:\Users\rich\Miniconda3\Scripts。
点击“确定”保存更改。
conda init powershell

### Install python for data science
cd ~/miniconda3
conda env create -f ~/Downloadas/Setup-New-Machine-main/Windows/environment.yml
source activate MachineLearning
### Install torch with cuda
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

### Run the checkinstallation.ps1
Use root run checkinstallation.ps1

Check all download is complete

