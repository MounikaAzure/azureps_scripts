## Finding the student grade based on Marks

$Marks = Read-Host "Enter the Marks Persentile"
Write-Host "Student Marks Persentile is $Marks"
if($Marks -ge 70){
Write-Host "Congrats Got First Grade"
}
elseif($Marks -gt 60){
Write-Host "Congrats Got Second Grade"
}
elseif($Marks -gt 50){
Write-Host "Congrats Got Third Grade"
}
else{
Write-Host "Better luck Next Time"
}
Write-Host "The End"