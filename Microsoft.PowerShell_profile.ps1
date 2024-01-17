# Setup plugins
oh-my-posh --init --shell pwsh --config "C:\Users\CarsonPrice\dev\source\repos\ohmyposh\config.json" | Invoke-Expression
Import-Module -Name Terminal-Icons

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

$env:PYTHONIOENCODING = 'utf-8'
Invoke-Expression "$(thefuck --alias)"

# Create aliases
Set-Alias im Import-Module
Set-Alias tn Test-NetConnection

Import-Module $PSScriptRoot/Scripts/Open-RepoProject.ps1 -Force
Clear-Host
