## Write a program to sum the two numbers (number1, number2)
## Both the numbers must accept from user input

[int]$number1 = Read-Host "Enter number1"
# $number1.GetType().Name
$number2 = Read-Host "Enter number2"
$total = $number1 +$number2;
Write-Host "Sum is $total"
