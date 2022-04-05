##Getthe RG in Arry variable
$name = Get-AzResourceGroup

##Create a variable with current Date and Time
$timestamp = Get-Date -Format o | ForEach-Object { $_ -replace ":", "." }

## $timestamp="staticfile"
## create the outputFileName with currentdate and time
$outputFileName = "D:\Azure\practise\$timestamp.txt"

Write-Host "Resource Group names are $name"

## Get the RG names and sort them , then write into output file
$name.ResourceGroupName | sort -Descending | Out-File -Append "$outputFileName" 
Write-Host "file generated at $outputFileName"