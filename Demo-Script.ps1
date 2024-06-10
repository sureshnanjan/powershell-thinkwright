<#
.Synopsis
   A simple script to explain functions
.DESCRIPTION
   A simple script to explain functions
.EXAMPLE
   1,2,3 | Demo-Script
   Demo-Script -Param1 10
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
function Demo-Script
{

[CmdletBinding()]
Param(
[Parameter(Mandatory=$true,
                   ValueFromPipeline=$true, Position = 1,ParameterSetName='With String')]
[string]$param1,

[Parameter(Mandatory=$true,
                   ValueFromPipeline=$true, Position = 1,ParameterSetName='With String')]
[string]$param1set,  

[Parameter(Mandatory=$true,
                   ValueFromPipeline=$true, Position = 1, ParameterSetName='With Integer')]
[int]$param2, 
[Parameter(Mandatory=$true,
                   ValueFromPipeline=$true, Position = 1)]
[int]$paramcommon
)



Begin{
Write-Information "This is a script got Demonstartion";
Write-Verbose "This is additional information for debugging";
Write-Debug "This is for additional debugginh";
Write-Host "Started the script"
Write-Host "Next Step in the script"
$variable = Get-Process notepad
Write-Debug $variable.Id
$dob = [datetime]::Parse("10-06-2024")
}
Process{

Write-Host $param1 is the current value for Param1
#Write-Host $param2 is the current value for Param2
}

End{
Write-Debug $MyInvocation
return $dob
}
}


#Demo-Script