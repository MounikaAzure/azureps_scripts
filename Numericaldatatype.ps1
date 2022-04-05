#[byte] $x = 255 # (0 - 255)
[int16] $y = 65536 # (0 - 255)

Write-Host $y



# ==== 

$stdNames = @("ram","mouni","reyansh",4,5,6,7,8)
$stdMarks = @(1,2,3,4,5,6,7,8)
$numbers = 1..100
$rateOfInterest = 10.544677;
$principle = 100;

$interest = ($principle * 12 * $rateOfInterest)/100
Write-Host "Interest of 12 months is $interest"
