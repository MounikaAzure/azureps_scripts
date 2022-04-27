$rowData = Get-Content -Path D:\Azure\azureps_scripts\rg_sa_config.json 

$jsonData = $rowData |  ConvertFrom-Json 

##$jsonData

##$jsonData.rgName

$rgName = $jsonData.rgName
$rgLocation = $jsonData.rgLocation
$saName = $jsonData.saName
$saLocation = $jsonData.saLocation
$containers = $jsonData.containers

Write-Host "RG Name $($rgName)"
Write-Host "RGLocation $($rgLocation)"
Write-Host "SA Name $($saName)"
Write-Host "SA Location $($saLocation)"
Write-Host "Contaier $($containers.GetType())"

##Get the resource group and if it is not exist create
$resourcegroup = (Get-AzResourceGroup -Name $rgName -Location $rgLocation -ErrorAction SilentlyContinue).ResourceGroupName

if($resourcegroup -ne $null){
    Write-Warning "Resource group name $rgName is already exist"

}
else{
    Write-host "Creating a New Resource Group name $rgName"
    New-AzResourceGroup -Name $rgName -Location $rgLocation
}

##Get the storage account and if it is not exist create
$storageacc = (Get-AzStorageAccount -ResourceGroupName $rgName -Name $saName -ErrorAction SilentlyContinue).StorageAccountName

if($storageacc -ne $null){
    Write-Warning "Storage Account name $saName is already exist"

}
else{
    Write-host "Creating a New Storage account name $saName"
    New-AzStorageAccount -ResourceGroupName $rgName -Name $saName -Location $saLocation -SkuName Standard_LRS -Kind StorageV2 -AccessTier Hot
}
##Get the context
$context = (Get-AzStorageAccount -ResourceGroupName $rgName -Name $saName -ErrorAction SilentlyContinue).Context

foreach($eachcontainer in $containers){

    #Write-Host "$eachcontainer"
$cName = $eachcontainer.containername
$cPer = $eachcontainer.permission
    Write-Host "Creating a Container $cName with permission $cPer"
    Write-Host "================"

    ##Create Container for each iteration if not exist

    $containerName = (Get-AzStorageContainer -Name $cName -Context $context -ErrorAction SilentlyContinue).Name

if($containerName -ne $null){
    Write-Warning "Container name $cName is already exist"

}
else{
    Write-host "Creating a New container name $cName under $saName "
    New-AzStorageContainer -Name $cName -Permission $cPer -Context $context
}



}






