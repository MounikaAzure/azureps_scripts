$names = @("Ram","Suresh", "Mahesh", "Jay", "Rahul")
$location = @("Hyd", "Mum", "Pune", "Chn", "Del")

<#
This is multi line comment

This is for iterarting the names array.
#>

### THis is single line comment ###############

for($i=0; $i -lt $names.count; $i++){
    Write-Host "$i My name is $($names[$i]) and i belong to $($location[$i])"
}


## for loop

$number = 1..10
$number.GetType()
for($j = 0;$j -lt $number.Length; $j++){
    $k = $number[$j]
     Write-Host $k" is a number"
}

## while loop

$f=0
while($f -lt $number.Length){
      Write-Host $f" is a number"
      $f++;
}







