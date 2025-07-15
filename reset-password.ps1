# PowerShell script to reset an AD user password
Import-Module ActiveDirectory

$Username = Read-Host "Enter the username"
$NewPassword = Read-Host "Enter new password" -AsSecureString

Set-ADAccountPassword -Identity $Username -NewPassword $NewPassword -Reset
Enable-ADAccount -Identity $Username
Write-Host "Password has been reset for $Username"
