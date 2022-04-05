##Remove RG

##Remove-AzResourceGroup -Name "Test02" -Force


##Remove multiple RGs
##Iterate through each RG and delete the RG which starts with 'Test' string 

#$rgNames = @("dfd")
$rgNames = (Get-AzResourceGroup).ResourceGroupName


Write-Host "All RG Names $rgNames" $rgNames.Count

<#
for($j=0;$j -lt $rgNames.Count ;$j++){
    Write-Host " Index value is "$j "array element is "$rgNames[$j]
}
#>


foreach($f in $rgNames){

Write-Host "array element is "$f
if($f.Contains("Test")){
Remove-AzResourceGroup -Name $f -Force

}

}




