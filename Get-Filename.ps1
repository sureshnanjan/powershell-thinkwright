param($name, $extension)
$MyFile = (Get-Date).TimeOfDay.ToString().Replace(':','-').Replace('.','-')
$MyFile = “$name{1}{0}.$extension” -f $MyFile, ‘-’
$MyFile = Join-Path $env:USERPROFILE -ChildPath $MyFile
return $MyFile
