## create a storage account using params
## if stoarge account is not exist, create a new stoarge account with given storage account name , location, rgName.
param($straccname, $rgName, $location)

## check the given storage account is created or not

$stracc = (Get-AzStorageAccount -ResourceGroupName $rgName -Name $straccname -ErrorAction SilentlyContinue).StorageAccountName 


##New-AzStorageAccount -ResourceGroupName "Dev2022" -Name "hdbfsfinance2022" -Location 'East US' -SkuName Standard_LRS -AccessTier Hot -Kind StorageV2

## if exist, print storage account is already exist

if($stracc -ne $null){
    Write-Host "Storage Account is exist"

}

else{
    Write-Host "Storage Account is not exist, Creating a New Storage Account"
    New-AzStorageAccount -ResourceGroupName $rgName -Name $straccname -Location $location -SkuName Standard_LRS -AccessTier Hot -Kind StorageV2

}

## if not created, create the storage account and print the name of stoarge account.







