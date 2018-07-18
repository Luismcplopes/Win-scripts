# Description: Boxstarter Script
# Author: Luislopes
# 

Disable-UAC

#--- Windows Features ---
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions


#--- File Explorer Settings ---
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2



#--- Windows Subsystems/Features ---
#choco install -y Microsoft-Hyper-V-All -source windowsFeatures
#choco install -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures

#--- Ubuntu ---
# Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile ~/Ubuntu.appx -UseBasicParsing
# Add-AppxPackage -Path ~/Ubuntu.appx


#--- Tools ---
choco install -y chocolateygui
choco install -y 7zip 
choco install -y dropbox 
choco install -y etcher 
choco install -y virtualbox 
choco install -y pspad 
choco install -y notepadplusplus.install 
choco install -y vscode 
choco install -y slack 
choco install -y tightvnc 
choco install -y firefox 
choco install -y maxthon 
choco install -y tor 
choco install -y vlc 
choco install -y gitkraken 
choco install -y putty 
choco install -y cmder
choco install -y python
choco install -y 7zip.install



Enable-UAC
Enable-MicrosoftUpdate
Enable-RemoteDesktop
Install-WindowsUpdate -acceptEula