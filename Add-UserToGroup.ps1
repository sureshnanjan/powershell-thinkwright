<#
.Synopsis
   Add user to the group
.DESCRIPTION
   Adding AD user object to the AD group 
.EXAMPLE
   Add-UserToGroup.ps1 -username "user1" -groupname "ADGroup1"
.EXAMPLE
   Another example of how to use this cmdlet
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


Param($Username,$GroupName)

Write-Host "Adding $Username to the AD group: $GroupName"


