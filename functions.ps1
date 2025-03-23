Import-Module Get-ChildItemColor
#Add PowerShell aliases and functions for directory navigation, IDE shortcuts, and Git commands
# functions definition

## Directory shortcuts
function Global:Go-Projects {
    Set-Location E:\Projects
}
function Global:Go-Home {
    Set-Location $env:USERPROFILE
}

## List directory shortcuts
function Global:List-Directories {
    Get-ChildItemColorFormatWide -Directory -TrailingSlashDirectory
}
function Global:List-Files {
    Get-ChildItemColorFormatWide -File
}
function Global:List-All {
    Get-ChildItemColorFormatWide -Force -TrailingSlashDirectory
}
## Command shortcuts
function Global:Clear-and-show-Directory {
    Clear-Host
    Get-ChildItemColorFormatWide -Force -TrailingSlashDirectory
}
## IDE shortcuts
function Global:Open-With-Webstorm {
    webstorm -ArgumentList $args

}
function Global:NeoVim {

    param (
        [string]$Path
    )

    nvim $Path
}
## Git shortcuts
function Global:Git-Help {
    $bold = "`e[1m"
    $reset = "`e[0m"

    Write-Host " "
    Write-Host "Git Shortcuts:"
    Write-Host "`t${bold}gts${reset} - Displays the current Git status"
    Write-Host "`t${bold}gtc${reset} - Commits changes to Git with a message"
    Write-Host "`t${bold}gtps${reset} - Pushes changes to the remote repo"
    Write-Host "`t${bold}gtpl${reset} - Pulls changes from the remote repo"
    Write-Host " "
}
function Global:Git-Status {
    git status
}
function Global:Git-Commit {
    param (
        [string]$Message
    )
    git commit -m $Message
}
function Global:Git-Push {
    git push
}
function Global:Git-Pull {
    git pull
}
function Global:Powershell-Edit-Alias {
    nvim ($PSScriptRoot + "\alias.ps1")
}