<#
.Synopsis
   Script to move Bulk User to Target OU
.DESCRIPTION
   Script will accept the Input file with multiple users and different Target OU movement. Create CSV file with Samaccountname and OUpath ( Distinguishedname)
.EXAMPLE
   Move-BulkADUsers -Inputfile c:\temp\BulkUsersToMove.csV

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
function Move-BulkADUsers
{
    [CmdletBinding()]
    
    Param
    (
        # Param1 
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   Position=0,
                   ParameterSetName='Parameter Set 1')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        $Inputfile

     )

    Begin
    {

      If((Test-path -Path $Inputfile) -ne $null){
      
      Continue

      Else {
      
      Write-Host "$Inputfile is invalid, Provide correct path"
      Stop
      }
      
      }


    }

    Process
    {
        
        $GetCSV = Import-Csv -pah $Inputfile

        Foreach ($line in $GetCSV){
        
        
        Get-aduser -identity $($GetCSV.Username) | Move-Adobject -Target $($GetCSV.OUpath) -verbose
        
        }



    }
    End
    {

        Clear-Variable GetCSV

    }
}