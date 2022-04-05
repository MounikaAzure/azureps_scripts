$path = "D:\GENERATED_REPORTS_PUBLISHER_NETS"
$files = (Get-ChildItem -Path $path | Where-Object{$_.Name -like "*.pdf"}).Name

foreach($eachfile in $files){
    Write-Host "each file name $eachfile"

}