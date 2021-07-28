param(
[string]$name=$(throw "NAME ERROR"),
[string]$ou="",
[string]$command=$(throw "ADD/DELETE"),
[string]$groupname=""
)
$dcName="museum"
$dcComName="com"
$serverPCName="SERVER"
$pass="Alyona@49289"

import-module activedirectory

switch($command)
{
 ADD
 {
    $secstr_pass=$pass | ConvertTo-SecureString -AsPlainText -Force
    New-ADUser `
    -Name $name `
    -Path "ou=$ou,dc=$dcName,dc=$dcComName" `
    -SamAccountName $name `
    -DisplayName $name `
    -Enabled $true `
    -AccountPassword $secstr_pass `
    -ChangePasswordAtLogon $false `
    -HomeDrive "T:" `
    -HomeDirectory "\\$serverPCName\FileServer\$name" `
    -scriptPath "mount_Disk.bat"
    mkdir "C:\FileServer\$name"    icacls "C:\FileServer\$name" /grant "$($name):(OI)(CI)M"
    if ($groupname -ne "")
    {
       Add-ADGroupMember -Identity $groupname -Members $name
    }
 }
 DELETE
 {
    Remove-ADUser -Identity $name
 }

}