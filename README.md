# Powershell Configuration Pack
Welcome to the PowerShell Configuration Pack! This repository consolidates PowerShell configurations and customizations tailored for development purposes. It seamlessly integrates multiple PowerShell modules to enhance the development experience, especially for .NET applications, Git, and more.

## Usage
This configuration pack is designed for Windows, utilizing Windows Terminal. While it can be adapted for other operating systems and PowerShell wrappers, additional configuration adjustments may be necessary for platform-specific settings.

## Getting Started
To get started using this configuration pack, you'll need to perform some initial setup to accommodate its versatility. A key step is installing PowerShell 7; follow the instructions [here](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.4). Ensure that PowerShell 7 is set as the default shell on Windows Terminal, a process detailed in the installation guide [here](https://learn.microsoft.com/en-us/windows/terminal/install). With Windows Terminal configured with PowerShell, you can then initialize color schemes and other settings using the `settings.json` file in this repository.

Note: extensions must be installed to fully utilize this configuration.

### Extensions
#### OhMyPosh
OhMyPosh serves to enhance the visual appeal of your shell and incorporates integrations for various platforms. To install OhMyPosh, refer to the documentation [here](https://ohmyposh.dev/docs/). Additionally, make sure to install the icon font "CaskaydiaCove NF" using the OhMyPosh tool with the command `oh-my-posh font install`.

#### PoshGit
In addition to installing OhMyPosh, it is essential to install PoshGit. PoshGit facilitates additional Git integrations within the shell, enhancing the overall functionality. You can complete the installation process by following the instructions [here](https://github.com/dahlbyk/posh-git).

#### TheFuck
For handling typing errors effectively, another valuable tool is TheFuck. You can install it by following the instructions [here](https://github.com/nvbn/thefuck).

### File Location
While the configuration files can reside anywhere on your machine, adjustments to file paths within the profile and custom scripts may be necessary. For a streamlined experience, consider placing the PowerShell profile and Scripts folder in a OneDrive folder dedicated to PowerShell. The OhMyPosh config JSON is recommended to be stored within OneDrive at a location of your choice.

Happy coding!
