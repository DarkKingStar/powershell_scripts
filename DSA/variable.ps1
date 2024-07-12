#enviroment variable
$env:APPDATA

$name = "Sounak"
$name
$name.GetType()

$num = 2
$num.GetType()

$d = Get-Date
$d.DayOfYear
$d.DayOfWeek
$d.Minute
$d.Month
$d.TimeOfDay
$d.Ticks

$sname = Read-Host "Enter the name of the service: "
$s = Get-Service -Name $sname

Write-Host "$($s.Name) is $($s.Status)"