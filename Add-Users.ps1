Param ($inputfile, $destination)
Write-Host "TReading input file"
Import-Csv .\users.csv | foreach {$_.name}
Write-Host "Adding to the destination Group $destination"

