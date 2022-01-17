# Installation of Win + Linux subsystem environment
The aim of these instructions and scripts is to quickly setup a working Windows + Linux subsystem environment for development and general office usage.

Preconditions: Win10/Win10pro/Win11 installed

## Repo contents
- [InstallTools.ps1](InstallTools.ps1) contains a powershell script to install Chocolatey (if not installed) and then install all the packages listed in [toolspackages.txt](toolspackages.txt) using Choco. 
- [toolspackages.txt](toolspackages.txt) contains a list of packages to install in Windows
- [checksha512.ps1](checksha512.ps1) contains a Powershell script for checking the SHA512 of a file against the SHA512 value given in a second file. Usage like `checksha512.ps1 file1.exe file1.exe.sha512`

## Instructions

1. Activate WSL2 & set linux user creds
- https://docs.microsoft.com/en-us/windows/wsl/setup/environment

2. Set Powershell default execution policy for user
- In admin powershell, run `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force`

3. Install Chocolatey Package Manager and packages using script
- Make sure you are in the root dir of this repo
- In admin powershell, run `.\InstallTools.ps1`. This will install Choco and use it to install all packages listed in toolspackages.txt.

4. Install AWS SAM CLI
- Not available through Choco
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install-windows.html

5. Install AWS CloudFormation Linter
- Install CFN-lint and Pydot (visualizing) with pip using `pip install cfn-lint` and `pip install pydot`

6. Install NoSQL Workbench for Amazon DynamoDB
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/workbench.settingup.html

7. Install VS Code extensions
- Python
- Jupyter
- Go
- AWS Toolkit
- CloudFormation Linter
- Git Extension Pack
- Git Graph
- Docker

