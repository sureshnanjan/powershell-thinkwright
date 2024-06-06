<#
.Synopsis
   Mailbox Size Query
.DESCRIPTION
   This script can assist to get the mailbox size above 50 GB
.EXAMPLE
   Get-MailboxSize -UserName 
.EXAMPLE
   More Example
.INPUTS
   Inputs to this cmdlet (if any)
   UserName, Email Address, ID
.OUTPUTS
   Output from this cmdlet (if any)
   User mailbox current size
.FUNCTIONALITY
   The functionality that best describes this cmdlet
#>

param($Username, $Username2)
Write-Host "Checking the Size for the $Username"

Write-host "Mailbox size is below for the $username"

