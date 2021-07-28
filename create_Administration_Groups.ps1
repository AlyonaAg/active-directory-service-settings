New-ADGroup `
-Name "Account Managers" `
-SamAccountName "Account Managers" `
-GroupScope Global `
-DisplayName "Account Managers" `
-Path "OU=Administration,DC=museum,DC=com"
`
New-ADGroup `
-Name "Help Desk" `
-SamAccountName "Help Desk" `
-GroupScope Global `
-DisplayName "Help Desk" `
-Path "OU=Administration,DC=museum,DC=com"
`
New-ADGroup `
-Name "Resource Admins" `
-SamAccountName "Resource Admins" `
-GroupScope Global `
-DisplayName "Resource Admins" `
-Path "OU=Administration,DC=museum,DC=com"
`
New-ADGroup `
-Name "General Admins" `
-SamAccountName "General Admins" `
-GroupScope Global `
-DisplayName "General Admins" `
-Path "OU=Administration,DC=museum,DC=com"