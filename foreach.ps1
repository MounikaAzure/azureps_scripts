$names = @("hari", "ram", "Suri")
#Write-Host "my name is $names"
foreach($eachName in $names){
    $fullName="P  "+$eachName
    Write-Host "my name is $fullName"
}