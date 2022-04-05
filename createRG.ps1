##To create more than 1 RGs

$rgnames = @("Test4", "Test5", "Test6")

foreach($name in $rgnames){       
       Write-Host "Attempting to create a Resource Group withe the name $name"
       New-AzResourceGroup -Name $name -Location 'EastUS'
}
Write-Host "Resource Groups created "Get-AzResourceGroup
#(Get-AzResourceGroup).ResourceGroupName
#Remove-AzResourceGroup -Name 'Test01'