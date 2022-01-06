# Installation of Win + Linux subsystem environment
The aim of these instructions and scripts is to quickly setup a working Windows + Linux subsystem environment for development and general office usage.

Preconditions: Win10/Win10pro/Win11 installed

## Repo contents
- [InstallTools.ps1](InstallTools.ps1) contains a powershell script to install Chocolatey (if not installed) and then install all the packages listed in [toolspackages.txt](toolspackages.txt) using Choco. 
- [toolspackages.txt](toolspackages.txt) contains a list of packages to install in Windows

## Instructions

1. Activate WSL2 & set linux user creds
- https://docs.microsoft.com/en-us/windows/wsl/setup/environment

2. Install Docker Desktop on Windows
- https://docs.docker.com/desktop/windows/install/

3. Set Powershell default execution policy for user
- In admin powershell, run `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force`

4. Install Chocolatey Package Manager and packages using script
- Make sure you are in the root dir of this repo
- In admin powershell, run `.\InstallTools.ps1`. This will install Choco and use it to install all packages listed in toolspackages.txt.

