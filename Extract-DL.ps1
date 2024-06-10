$MyFile = (Get-Date).TimeOfDay.ToString().Replace(':','-').Replace('.','-')
$MyFile = “ReplaceThisWithYourName{1}{0}.log” -f $MyFile, ‘-’
$MyFile = Join-Path $env:USERPROFILE -ChildPath $MyFile
return $MyFile
