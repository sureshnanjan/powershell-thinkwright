<#
.Synopsis
   Grant permission for user on sharepoint site
.DESCRIPTION
   Grant permission for user on sharepoint site
.EXAMPLE
   Grant-Permission -username suresh -permission
.INPUTS
   Inputs to this cmdlet (if any)
.OUTPUTS
   Output from this cmdlet (if any)
.NOTES
   General notes
.COMPONENT
   The component this cmdlet belongs to
.ROLE
   The role this cmdlet belongs to
.FUNCTIONALITY
   The functionality that best describes this cmdlet
#>
param($username, $sitename, $permissiontype)
Write-Host "for $username"
Write-Host "checking for site $sitename"
Write-Host "Permission granted for $permissiontype"