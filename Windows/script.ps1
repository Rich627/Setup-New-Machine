$downloads = @{
    "Chrome" = @{
        "Url" = "https://dl.google.com/chrome/install/latest/chrome_installer.exe"
        "OutFile" = "C:\Temp\chrome_installer.exe"
    }
    "Git" = @{
        "Url" = "https://git-scm.com/download/win"
        "OutFile" = "C:\Temp\git_installer.exe"
    }
    "VSCode" = @{
        "Url" = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
        "OutFile" = "C:\Temp\vscode_installer.exe"
    }
    "MSSQL" = @{
        "Url" = "https://go.microsoft.com/fwlink/?linkid=866658"
        "OutFile" = "C:\Temp\mssql_installer.exe"
    }
    "MSSQLManagementStudio" = @{
        "Url" = "https://go.microsoft.com/fwlink/?linkid=2168061"
        "OutFile" = "C:\Temp\mssqlmanagementstudio_installer.exe"
    }
    "Docker" = @{
        "Url" = "https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe"
        "OutFile" = "C:\Temp\docker_installer.exe"
    }
    "R" = @{
        "Url" = "https://cran.r-project.org/bin/windows/base/R-4.3.2-win.exe"
        "OutFile" = "C:\Temp\r_installer.exe"
    }
    "RStudio" = @{
        "Url" = "https://download1.rstudio.org/electron/windows/RStudio-2023.09.1-494.exe"
        "OutFile" = "C:\Temp\rstudio_installer.exe"
    }
    "NodeJS" = @{
        "Url" = "https://nodejs.org/dist/v16.14.2/node-v16.14.2-x64.msi"
        "OutFile" = "C:\Temp\node_installer.msi"
    }
}

$TempPath = "C:\Temp"
if (-not (Test-Path -Path $TempPath)) {
    New-Item -ItemType Directory -Path $TempPath
}

foreach ($software in $downloads.Keys) {
    $url = $downloads[$software]["Url"]
    $outfile = $downloads[$software]["OutFile"]
    $installArgs = $downloads[$software]["InstallArgs"]
    
    Write-Host "Downloading $software..."
    Invoke-WebRequest -Uri $url -OutFile $outfile

    Write-Host "Installing $software..."
    Start-Process -FilePath $outfile -ArgumentList $installArgs -Wait -NoNewWindow

    Write-Host "$software installed."
}

Write-Host "All downloads and installations complete."
