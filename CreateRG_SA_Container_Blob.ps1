$rgname = "Kalpataru-RG"
$location = "East US"
$storageAccount = "storagekt2022"
$container = "ktcontainer"


##Get the resource group and if it is not exist create
$resourcegroup = (Get-AzResourceGroup -Name $rgname -Location $location).ResourceGroupName

if($resourcegroup -ne $null){
    Write-Warning "Resource group name $rgname is already exist"

}
else{
    Write-host "Creating a New Resource Group name $rgname"
    New-AzResourceGroup -Name $rgname -Location $location
}
##Get the storage account and if it is not exist create
$storageacc = (Get-AzStorageAccount -ResourceGroupName $rgname -Name $storageAccount -ErrorAction SilentlyContinue).StorageAccountName

if($storageacc -ne $null){
    Write-Warning "Storage Account name $storageAccount is already exist"

}
else{
    Write-host "Creating a New Storage account name $storageAccount"
    New-AzStorageAccount -ResourceGroupName $rgname -Name $storageAccount -Location $location -SkuName Standard_LRS -Kind StorageV2 -AccessTier Hot
}
##Get the storage accont context
$context = (Get-AzStorageAccount -ResourceGroupName $rgname -Name $storageAccount -ErrorAction SilentlyContinue).Context

##Crreate Container if not exist

$containerName = (Get-AzStorageContainer -Name $container -Context $context -ErrorAction SilentlyContinue).Name

if($containerName -ne $null){
    Write-Warning "Container name $container is already exist"

}
else{
    Write-host "Creating a New container name $container under $storageAccount"
    New-AzStorageContainer -Name $container -Permission Off -Context $context
}

##Upload the Blobs into Container

$path = "D:\GENERATED_REPORTS_PUBLISHER_NETS"
$files = (Get-ChildItem -Path $path | Where-Object{$_.Name -like "*.pdf"}).Name

foreach($eachfile in $files){
    Write-Host "each file name $eachfile"
    Set-AzStorageBlobContent -Container $container -File $path\$eachfile -Context $Context -Force
}

##check created blobs inside the container

$AzBlobs = (Get-AzStorageBlob -Container $container -Context $context).Name ##-Blob blob*

foreach($eachblob in $AzBlobs){
    Write-Host "each blob $eachblob"
    
    if($eachblob.Contains("account" ))
    {
    Write-Host "each blob $eachblob deleting"
    Remove-AzStorageBlob -Container $container -Blob $eachblob -Context $context
    }
    
}





