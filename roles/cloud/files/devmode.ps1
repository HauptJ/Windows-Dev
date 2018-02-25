# Enables HyperV and Developer Mode

##### Enable Developer Mode #####

# Source: https://stackoverflow.com/questions/40033608/enable-windows-10-developer-mode-programmatically
# Create AppModelUnlock if it doesn't exist, required for enabling Developer Mode
$RegistryKeyPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock"
if (-not(Test-Path -Path $RegistryKeyPath)) {
    New-Item -Path $RegistryKeyPath -ItemType Directory -Force
}

# Add registry value to enable Developer Mode
New-ItemProperty -Path $RegistryKeyPath -Name AllowDevelopmentWithoutDevLicense -PropertyType DWORD -Value 1

##### Install Hyper V #####

# Install the entire Hyper-V stack (hypervisor, services, and tools)
# Source: https://www.altaro.com/hyper-v/install-hyper-v-powershell-module/
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All -NoRestart

##### Install Windows Subsystem for Linux #####

Enable-WindowsOptionalFeature -FeatureName Microsoft-Windows-Subsystem-Linux -Online -All -NoRestart
