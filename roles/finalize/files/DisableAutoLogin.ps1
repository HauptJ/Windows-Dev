# Disables AutoLogin of Administrator account
# Source: https://github.com/cliqz-oss/cliqz-packer-templates/blob/master/windows/disable-autologin.ps1

Set-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -name AutoAdminLogon -value 0
