##Script- Create a RG were RG Name & Location accept from interavtive prompt 
##Author @Mounika

$name = Read-Host "Enter the Resource Group Name"
$location = Read-Host "Enter the Resource Group location"

Write-Host "Creating a new Resource Group Name $name in the Location $location"

New-AzResourceGroup -Name $name -Location $location

##Sleep for 15 Seconds
<#Write-Host "Sleeping Now"

Start-Sleep -s 15
Write-Host "Wakeup after 15 Sec"#>

$createdRGnames = (Get-AzResourceGroup).ResourceGroupName

foreach($eachRg in $createdRGnames){
     Write-Host "each RG in array is $eachRg" 
    if($name -eq $eachRg){
        Write-Host "New RG $name Created" -ForegroundColor Red
        break
    }
}

$count = $createdRGnames.Length

Write-Host "Total Number of RG's $count"