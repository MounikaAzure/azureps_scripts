##Script- Write a program to Create a RG where RG Name & Location accept from interavtive prompt
##Before creating Rg check the given RG name already exists or not
##If not exist create a Rg with the given name
##else(if exist) print a message saying Rg already Exist    
##Author @Mounika

$name = Read-Host "Enter the Resource Group Name"
$location = Read-Host "Enter the Resource Group location"
$isRgnameExist = $false
$createdRGnames = (Get-AzResourceGroup).ResourceGroupName

foreach($eachRg in $createdRGnames){
     Write-Host "each RG in array is $eachRg" 
    if($name -eq $eachRg){
        ##Write-Host "New RG $name Created" -ForegroundColor Red
       $isRgnameExist = $true
 
        break
    }
}
if($isRgnameExist){
Write-Host "Given RG $name already exists" -ForegroundColor DarkCyan

}
else{
##given Rg is not exist creating a new one

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

}





