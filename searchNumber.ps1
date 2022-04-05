$array = @(1,2,3,4,5)
$searchNumber = Read-Host "Enter the Number you want to search"  
$isNumExist = $false
foreach($eachNumber in $array){
    Write-Host "Each Number $eachNumber"
    if($searchNumber -eq $eachNumber){
         ##Write-Host "Entered Number is Exist $number"
         $isNumExist = $true
         break
    }
}
if($isNumExist){
    Write-Host "Entered Number is Exist $searchNumber"
} 
else {
    Write-Host "Entered Number is not Exist $searchNumber"
}