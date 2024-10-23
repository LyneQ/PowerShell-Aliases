# PowerShell-Aliases

![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white)
![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)

## Overview

Welcome to my personal collection of useful PowerShell aliases and functions designed to enhance productivity. This repository contains a set of custom commands and shortcuts to streamline your workflow in PowerShell.

## Features

- **Directory Shortcuts**: Quickly navigate to frequently used directories.
- **Command Shortcuts**: Simplify common tasks with custom commands.
- **IDE Shortcuts**: Open projects in WebStorm with ease.
- **Git Shortcuts**: Manage your Git repositories with simple commands.

## Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/LyneQ/PowerShell-Aliases.git
    ```

2. **Navigate to the directory**:
    ```sh
    cd PowerShell-Aliases
    ```

3. **Copy the `alias.ps1` file to your PowerShell profile directory**:
    ```sh
    cp alias.ps1 $PROFILE.CurrentUserAllHosts
    ```

4. **Source the aliases file**:
    Add the following line to your `Microsoft.PowerShell_profile.ps1`:
    ```powershell
    . ($PSScriptRoot + "\alias.ps1")
    ```

### Finding `Microsoft.PowerShell_profile.ps1`

The `Microsoft.PowerShell_profile.ps1` file is typically located in the following directory:
- **Windows**: `C:\Users\<YourUsername>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`

If the file does not exist, you can create it manually in the specified directory.

## Updating PowerShell

To ensure better compatibility, it is recommended to update PowerShell to the latest version. Follow these steps:

1. **Download the latest version of PowerShell**:
    Visit the [PowerShell GitHub releases page](https://github.com/PowerShell/PowerShell/releases) and download the latest stable release for your operating system.

2. **Install PowerShell**:
    Follow the installation instructions provided on the GitHub releases page for your specific operating system.

3. **Verify the installation**:
    Open a new PowerShell session and run the following command to verify the version:
    ```powershell
    $PSVersionTable.PSVersion
    ```

## Usage

### Directory Shortcuts

- **Go to Becode directory**:
    ```sh
    becode
    ```

- **Go to Projects directory**:
    ```sh
    projects
    ```

- **Go to Home directory**:
    ```sh
    home
    ```

### Command Shortcuts

- **Clear the screen and show directory contents**:
    ```sh
    cls
    ```

### IDE Shortcuts

- **Open current directory with WebStorm**:
    ```sh
    ws
    ```

### Git Shortcuts

- **Display Git help**:
    ```sh
    gth
    ```

- **Show Git status**:
    ```sh
    gts
    ```

- **Commit changes with a message**:
    ```sh
    gtc "Your commit message"
    ```

- **Push changes to the remote repository**:
    ```sh
    gtps
    ```

- **Pull changes from the remote repository**:
    ```sh
    gtpl
    ```

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request with your changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to open an issue or contact me directly.

---

Happy scripting!