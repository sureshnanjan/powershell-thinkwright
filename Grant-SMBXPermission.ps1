<##>

param($username,$SMBXname,$Accessrights)
Write-Host "User Name:" $username
Write-Host "Shared Mailbox Name:" $SMBXname
Write-Host "Level of Permission (Full Access, Send As or Send on Behalf):" $Accessrights
Write-Host $Accessrights "Permission has been granted to" $username "on the mailbox" $SMBXname