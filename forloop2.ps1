$names = @("Ram","Suresh", "Mahesh", "Jay", "Rahul")
$location = @("Hyd", "Mum", "Pune", "Chn", "Del")

$names[0]
$location[0]

for($i=0; $i -lt 5; $i++){

Write-Host "My name is $($names[$i]) and i belong to $($location[$i])"


}