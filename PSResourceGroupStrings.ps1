##To Get Resource Group

(Get-AzResourceGroup).


##To Get RG Names Only

(Get-AzResourceGroup). ResourceGroupName

##To Create RG a new RG

New-AzResourceGroup -Name "Testing-RG" -Location "eastus"

##To Remove RG

Remove-AzResourceGroup -Name "Testing-RG"

##To Remove RG without Popup

Remove-AzResourceGroup -Name "Testing-RG" -Force