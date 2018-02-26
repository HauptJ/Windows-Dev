############################################################
# Powershell script to set date and time settings
# Author: Joshua Haupt josh@hauptj.com Date: 25.2.2018
############################################################

##### Set Time Settings #####

Write-Host "Setting Date and Time Settings"
# Source: https://www.ucunleashed.com/1753

# Set Time Zone to Central Standard Time
Write-Host "Setting Time Zone"
Set-TimeZone "Central Standard Time"

# Source: https://stackoverflow.com/questions/28749439/changing-windows-time-and-date-format
# Source: https://superuser.com/questions/1204142/removing-12-hour-time-from-windows-10-login-screen-at-startup-24-hour-already-s
# Set Short date format
Write-Host "Setting Short date format"

Set-ItemProperty -Path "HKCU:\Control Panel\International" -name sShortDate -value "dd-MMM-yy"

# Set Long date format
Write-Host "Setting Long date format"
Set-ItemProperty -Path "HKCU:\Control Panel\International" -name sLongDate -value "dddd-MMMM-yyyy"

# Set Short time format
Write-Host "Setting Short time format"
Set-ItemProperty -Path "HKCU:\Control Panel\International" -name sShortTime -value "HH:mm"

# Set Long time format
Write-Host "Setting Long time format"
Set-ItemProperty -Path "HKCU:\Control Panel\International" -name sTimeFormat -value "HH:mm:ss"
