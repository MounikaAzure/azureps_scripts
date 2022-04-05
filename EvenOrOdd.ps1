##This program is for finding the given Number is Even or Odd.


$numbers = Read-Host "Enter Number"

if(($numbers%2) -eq 0){
Write-host "$numbers is Even"
}
elseif($numbers%2 -eq 1){
Write-Host "$numbers is Odd"
}

else
{
Write-Host "$numbers is 0"
}


