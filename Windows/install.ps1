# PowerShell Script to Install Various Software

# Change directory to where the installers are located

# Install Chrome
Write-Host "Installing Chrome..."
Start-Process -FilePath .\chrome_installer.exe -Wait -ArgumentList "/silent", "/install"

# # Install Docker
# Write-Host "Installing Docker..."
# Start-Process -FilePath .\docker_installer.exe -Wait -ArgumentList "/Install", "/Quiet"

# Install Git
Write-Host "Installing Git..."
Start-Process -FilePath .\git_installer.exe -Wait -ArgumentList "/VERYSILENT"

# Install MSSQL
Write-Host "Installing MSSQL..."
Start-Process -FilePath .\mssql_installer.exe -Wait -ArgumentList "/quiet", "/norestart"

# Install Node.js
Write-Host "Installing Node.js..."
Start-Process msiexec.exe -Wait -ArgumentList "/i", "node_installer.msi", "/quiet", "/norestart"

# Install VSCode
Write-Host "Installing Visual Studio Code..."
Start-Process -FilePath .\vscode_installer.exe -Wait -ArgumentList "/silent", "/mergetasks=!runcode"

Write-Host "Installation of all software is complete."


