$x = 1

if ($x -eq 1)
{
   Write-Host "Value 1" 
}
elseif($x -eq 2)
{
     Write-Host "Value 2" 
}
elseif($x -eq 3)
{
    Write-Host "Value 3"  
}
else{
    Write-Host "NOt Matching any"
}

switch ($x)
{
    {$_ -in 1,2,3,4,5} {
    Write-Host "The Range is within 5"
    }
    Default {
    Write-Host "The range is outside"
    }
}

$machines = "DC1 ", "DC2 ", "DC3 ", "server ", "exchangeserver"
$x = 0
Write-Host "Until Loop"
do
{
  Write-Host "Processing Item $machines[$x]" 
  $x += 1 
}
until ($x -gt 5)

Write-Host "While Loop"

do
{
    Write-Host "Processing Item $machines[$x]" 
    $x -= 1
}
while ($x -gt 0)

Write-Host "For Loop"
for ($i = 1; $i -lt 5; $i++)
{ 
    Write-Host "Processing Item $machines[$i]" 
}

Write-Host "For EACH Loop"
foreach ($item in $machines)
{
    Write-Host "Processing Item $item"
}




