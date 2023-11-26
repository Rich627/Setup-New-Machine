# Define expected locations or registry entries for each software
$installations = @{
    "Chrome" = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe"
    "Git" = "C:\Program Files\Git\cmd\git.exe"
    "VSCode" = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\VisualStudioCode"
    "MSSQL" = "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server"
    "Docker" = "C:\Program Files\Docker\Docker\Docker Desktop.exe"
    "R" = "C:\Program Files\R\R-4.2.0\bin\R.exe"
    "RStudio" = "C:\Program Files\RStudio\bin\rstudio.exe"
    "NodeJS" = "C:\Program Files\nodejs\node.exe"
}

# Check each software installation
foreach ($software in $installations.Keys) {
    $path = $installations[$software]
    if ($path -like "HKLM:*") {
        # Check for registry entry
        if (Test-Path -Path $path) {
            Write-Host "$software is installed."
        } else {
            Write-Host "$software is NOT installed."
        }
    } else {
        # Check for file existence
        if (Test-Path -Path $path) {
            Write-Host "$software is installed."
        } else {
            Write-Host "$software is NOT installed."
        }
    }
}
