############################################################
# Powershell script to configure Windows Explorer folder options through Powershell
# Author: Joshua Haupt josh@hauptj.com Date: 25.2.2018
############################################################

# Source: https://stackoverflow.com/questions/4491999/configure-windows-explorer-folder-options-through-powershell

$RegistryKeyPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'

# Choose "Show hidden files, folders, and drives"
Set-ItemProperty $RegistryKeyPath Hidden 1

# Uncheck "Hide extensions for known file types"
Set-ItemProperty $RegistryKeyPath HideFileExt 0

# Uncheck "Hide protected operating system files (Recommended)"
Set-ItemProperty $RegistryKeyPath ShowSuperHidden 1

# Restart explorer
Stop-Process -processname explorer