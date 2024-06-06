<#
.Synopsis
   Cheking Files in a Folder
.DESCRIPTION
   This will show the available files in folder
.EXAMPLE
   Get-FileSize -Folder Test1
.EXAMPLE
   More Example
.INPUTS
   Inputs to this cmdlet (if any)
   UserName, Email Address, ID
.OUTPUTS
   Output from this cmdlet (if any)
   User mailbox current size
.NOTES
   General notes
.COMPONENT
   The component this cmdlet belongs to
.ROLE
   The role this cmdlet belongs to
.FUNCTIONALITY
   The functionality that best describes this cmdlet
#>

param($folderName, $drive)
Write-host "Checking the Files in the Folder $Folder"
Write-Host "Providing the Size of the Files in the $Folder"