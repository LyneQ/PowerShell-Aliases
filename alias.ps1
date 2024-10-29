Import-Module Get-ChildItemColor
#Add PowerShell aliases and functions for directory navigation, IDE shortcuts, and Git commands
# functions definition

## Directory shortcuts
function Global:Go-Becode {
    Set-Location E:\Becode
}
function Global:Go-Projects {
    Set-Location E:\code
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
    List-All
}
## IDE shortcuts
function Global:Open-With-Webstorm {
    Start-Process -FilePath "C:\Program Files\JetBrains\WebStorm 2024.1.5\bin\webstorm64" -ArgumentList $args

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

# Create an alias for the functionn
## list directories
Set-Alias -Name "lsd" -Value "List-Directories" -Scope Global
Set-Alias -Name "lsf" -Value "List-Files" -Scope Global
Set-Alias -Name "lsa" -Value "List-All" -Scope Global
## go to specific directory
Set-Alias -Name "becode" -Value "Go-Becode" -Scope Global
Set-Alias -Name "projects" -Value "Go-Projects" -Scope Global
Set-Alias -Name "home" -Value "Go-Home" -Scope Global
## beautify the terminal
Set-Alias -Name "cls" -Value "Clear-and-show-Directory" -Scope Global
## open file with webstorm
Set-Alias -Name "ws" -Value "Open-With-Webstorm" -Scope Global
## NeoVim shortcuts
Set-Alias -name "vi" -Value "NeoVim"
## Git shortcuts
Set-Alias -Name "gth" -Value "Git-Help" -Scope Global
Set-Alias -Name "gts" -Value "Git-Status" -Scope Global
Set-Alias -Name "gtc" -Value "Git-Commit" -Scope Global
Set-Alias -Name "gtps" -Value "Git-Push" -Scope Global
Set-Alias -Name "gtpl" -Value "Git-Pull" -Scope Global
