Add PowerShell aliases and functions for directory navigation, IDE shortcuts, and Git commands
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


## Command shortcuts
function Global:Clear-and-show-Directory {
    Clear-Host
    Get-ChildItem -Force
}

## IDE shortcuts

function Global:Open-With-Webstorm {
    Start-Process -FilePath "$env:USERPROFILE\AppData\Local\Programs\WebStorm\bin\webstorm64" -ArgumentList $args
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


# Create an alias for the function

# go to specific directory
Set-Alias -Name "becode" -Value "Go-Becode" -Scope Global
Set-Alias -Name "projects" -Value "Go-Projects" -Scope Global
Set-Alias -Name "home" -Value "Go-Home" -Scope Global

# beautify the terminal
Set-Alias -Name "cls" -Value "Clear-and-show-Directory" -Scope Global

# open file with webstorm
Set-Alias -Name "ws" -Value "Open-With-Webstorm" -Scope Global

# Git shortcuts
Set-Alias -Name "gth" -Value "Git-Help" -Scope Global
Set-Alias -Name "gts" -Value "Git-Status" -Scope Global
Set-Alias -Name "gtc" -Value "Git-Commit" -Scope Global
Set-Alias -Name "gtps" -Value "Git-Push" -Scope Global
Set-Alias -Name "gtpl" -Value "Git-Pull" -Scope Global
