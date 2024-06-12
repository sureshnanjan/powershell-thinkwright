function Check-Prerequisites{
[CmdletBinding()]
param()
# Check Prerequisites
$buildnumver = (Get-ComputerInfo | Select-Object -Property OsBuildNumber).OsBuildNumber
$repository = "\\repository.company.com\osimages\"
$imagename = "2012-server.iso"
$win8image = "windows8.iso"
#2006 or above 
if ([int]$buildnumver -gt 2006)
{
    Write-Verbose $buildnumver
    Write-Host "Prerequisite OK"
}
else{
    Write-Error "YOU CANNOT SEtup in this machine"
}

Test-Path -Path $repository+$imagename
Test-Path -Path $repository+$win8image
Get-WmiObject -Class Win32_Product -Filter "Name like %office%"
}


function Test-HostAlive{
param($cname)
 Test-NetConnection -ComputerName $cname
}