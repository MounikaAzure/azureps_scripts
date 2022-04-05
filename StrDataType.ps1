$str = "2"
$str2= "3"
$str3 = "$str is even number and $str2 is odd number"
Write-Host $str3
Write-Host $str3.Length
Write-Host $str3.ToLower()


## 
$name = "My name is Ram, I am from Hyd,Bye "
Write-Host "Length of name is "$name.Length
$x = $name.Split(",")
$x.GetType().Name
Write-Host "Count of array is "$x.Count

