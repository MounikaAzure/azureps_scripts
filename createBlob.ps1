 $rgName="Dev2022"
  $straccname ="hdbfsqc2022"
$Context = (Get-AzStorageAccount -ResourceGroupName $rgName -Name $straccname -ErrorAction SilentlyContinue).Context

New-AzStorageContainer -Name "qc1container" -Context $Context -Permission Off

Set-AzStorageBlobContent -Container "qc1container" -File "D:\Azure\practise\forloop2.ps1" -Context $Context 

$files = Get-ChildItem -path "D:\Azure\practise\" | Where-Object{$_.Name -Like "Create*"}
$files.Name


Set-AzStorageBlobContent -Container "qc1container" -File $files -Context $Context 

