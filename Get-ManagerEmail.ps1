<#
   .Synopsis
      Returns Managers email address for username provided.
   .DESCRIPTION
      Returns Managers email address for username provided.
   .EXAMPLE
      Get-ManagerEmail -User <username>
   .EXAMPLE
      Another example of how to use this cmdlet
   .INPUTS
      Provide the username as input
   .OUTPUTS
      Manager Email
   .NOTES
      General notes
   .COMPONENT
      The component this cmdlet belongs to
   .ROLE
      The role this cmdlet belongs to
   .FUNCTIONALITY
      The functionality that best describes this cmdlet
   #>

   param(
   [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
   [string[]]$User
   )

   Write-Host "Fetching Manager's email Address" -ForegroundColor Yellow
   $MgrEmail = "$($user).mgr@email.com"
   return $MgrEmail
