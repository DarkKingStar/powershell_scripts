function Get-AddNums(){
    return "Hello world"
}
cls
Get-AddNums

function Get-AddNums(){
param(
    [int]$value,
    [int]$valuee
)
    return $value + $valuee
}
cls
$val1 = Read-Host "Enter a number" 
$val2 = Read-Host "Enter a number" 
Get-AddNums -value $val2 -valuee $val1