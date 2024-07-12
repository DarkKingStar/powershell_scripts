#Get-Service & Get-Process

Get-Alias -Definition Get-Process
Get-Alias -Definition Get-Service

Get-Process

$list = New-Object Collections.Generic.List[String]

Get-Help New-Object

Get-Process | ForEach-Object {
    $Pname = $_.ProcessName
    $id = $_.Id
    $list.add("$id `t $Pname`n")
}
Write-Host $list

Get-Process | Select-Object ProcessName, ID, CPU # target particular coloumn

ping google.com
Test-Connection google.com



