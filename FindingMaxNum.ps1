##$arr contains collection of data(variable) in a sequential order

$arr = @(3,7,10,4,1)
$MaximumVariable = $arr[0]         ## maxvariable holds the $arr[0]th value i.e 3     ## i value is indicating the index value of array                             
for($i=1; $i -lt $arr.count; $i++){
Write-Host "index $i array value "$arr[$i]     ##index 1 array value 7
if($MaximumVariable -lt $arr[$i]){            ##index 2 array value 10
$MaximumVariable = $arr[$i]                     ##index 3 array value 4
}##End of if                                            index 4 array value 1
}##End of for loop
Write-Host "Largest Valuse is $MaximumVariable"
