param($name,$location)

$rgName = Get-AzResourceGroup -Name $name -Location $location -ErrorAction SilentlyContinue

if($rgName -eq $null){
    Write-Host $name is not exist
}
else{
    Write-Host "Resource Group $rgName Exist"
}