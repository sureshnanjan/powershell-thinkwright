<#
   .Synopsis
      Generate a report of Windows Services and thier status.
   .DESCRIPTION
      Generates the html report of services with their status.
   .EXAMPLE
      To report only Running Services
      Report-Services -Status Running
   .EXAMPLE
      To report only Stopped Services
      Report-Services -Status Stopped
   .INPUTS
      
   .OUTPUTS
      
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
   [string]$Status,
   [string]$OutputPath = (Get-Location)
   )

   $d = (Get-Date).Date.ToString('ddMMyyyy-hhmm')
   if ($Status -eq "")
   {$ServiceData = Get-Service | Select Name, DisplayName, ServiceType | Sort-Object Status | ConvertTo-Html }
   else 
   {$ServiceData = Get-Service | where {$_.Status -eq $Status} | Select Name, DisplayName, ServiceType | ConvertTo-Html}
   
   $ServiceData | Out-File "$OutputPath\ServiceStatus_$d.html"

