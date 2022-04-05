##Program to Create RGs Using Array of Rg Names and Locations

##create RG Name Array

$rgnames = @("Work1", "Work2", "Work3", "Work4")

##Create Location Array

$locations =@("Central US", "East US", "Central India", "North Europe")

$rgnames[0]
$locations[0]
for($i=0; $i -lt $rgnames.count; $i++){

    Write-Host "Create Resource Group Name "$rgnames[$i] "location name" $locations[$i]
    New-AzResourceGroup -Name $rgnames[$i] -Location $locations[$i]  -Force

}

New-AzResourceGroup -Name $rgnames[0] -Location $locations[0]

