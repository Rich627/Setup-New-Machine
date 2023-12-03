## Setup Win11 
### Install Chrome, vscode, docker, mssql, r, python, rstudio, mysql
### 繞過數位簽章認證
cd ~\Downloads\Setup-New-Machine-main\Setup-New-Machine-main\Windows
PowerShell.exe -ExecutionPolicy Bypass -File .\script.ps1

### Install package
cd C:\Temp\
PowerShell.exe -ExecutionPolicy Bypass -File ~\Downloadas\Setup-New-Machine-main\Windows\install.ps1

### Setup Conda
Open 環境變數
編輯環境變量
將此路徑加到path:'C:\\Miniconda3\Scripts'
並且移到最上面點擊保存
./conda init powershell

### Install python for data science
cd /miniconda3
conda env create -f C:\Users\rich\Downloads\Setup-New-Machine-main\Setup-New-Machine-main\Windows\environment.yml
conda activate MachineLearning
### Install torch with cuda
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

### Run the checkinstallation.ps1
Use root run checkinstallation.ps1

Check all download is complete
