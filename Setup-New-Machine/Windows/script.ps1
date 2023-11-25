# define function
Function Download-And-Install($Url, $OutFile)
{
    # downolad file
    Invoke-WebRequest -Uri $Url -OutFile $OutFile

    # install file
    Start-Process -FilePath $OutFile -Args '/silent /install' -Wait -NoNewWindow
}
# visual studio community
curl -o VisualStudioCommunityInstaller.exe https://visualstudio.microsoft.com/zh-hant/vs/community/
Invoke-WebRequest -Uri "https://developer.nvidia.com/cuda-downloads" -OutFile "cuda-setup.exe"
Start-Process -FilePath ".\cuda-setup.exe" -Wait

# if you want to install other app, just add the url and outfile
$chromeUrl = "https://dl.google.com/chrome/install/latest/chrome_installer.exe"
$chromeOutFile = "C:\Temp\chrome_installer.exe"
$gitUrl = ""
$gitOutFile = ""
$vscodeUrl = ""
$vscodeOutFile = ""
$mssqlUrl = ""
$mssqlOutFile = ""
$dockerUrl = ""
$dockerOutFile = ""
$rUrl = ""
$rOutFile = ""
$rStudioUrl = ""
$rStudioOutFile = ""
$pythonUrl = ""
$pythonOutFile = ""
$nodeUrl = ""
$nodeOutFile = ""

Download-And-Install -Url $chromeUrl -OutFile $chromeOutFile
