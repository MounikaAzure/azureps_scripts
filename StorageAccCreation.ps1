##create a storage Account using Param

param(
$rgname, 
$storageAccName,
$location
##$skuName,
##$tier
)
##Creating a new Az storage Account

New-AzStorageAccount -ResourceGroupName $rgname -Name  $storageAccName -Location $location -SkuName Standard_LRS -Kind BlobStorage -AccessTier Hot

$StorageAccount = Get-AzStorageAccount -StorageAccountName "rmmamam" -ResourceGroupName Operation2022 -ErrorAction SilentlyContinue

$StorageAccount = Get-AzStorageAccount - "hdbfssales2022" -ResourceGroupName "Dev2022" - ## -ErrorAction SilentlyContinue

Write-Host "$StorageAccount"

$stracc = (Get-AzStorageAccount  -Name "hdbfssales2022"  -ResourceGroupName Dev2022 -ErrorAction SilentlyContinue).StorageAccountName


Write-Host $stracc
