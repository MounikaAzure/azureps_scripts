##Script - To Create RG
##User Inputs
##Create a RG each time (reusable Script)

##Read the Inpur from a user
 
 $rgName = Read-Host "Hey Mounika enter RG Name"
 Write-Host "Creating RG with name $rgName" 
 New-AzResourceGroup -Name $rgName -Location 'EastUS'

Write-Host "RG Created"
