#Requires -RunAsAdministrator
function Get-DOB{
param(

[string] $paraminstring,
[datetime]$paramindatetime,
[int] $timeinsecons
)
Write-Host $paraminstring
Write-Host $paramindatetime
Write-Host $timeinsecons
}