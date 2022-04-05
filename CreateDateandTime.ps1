$timestamp = Get-Date -Format o | ForEach-Object { $_ -replace ":", "." }
Write-Host "$timestamp"
New-Item -Path D:\Azure\practise\$timestamp".txt" -Type File

$x = (Get-Date -Format o).GetType()

Get-Date -UFormat "%A %Y/%m/%d/ %R %Z"