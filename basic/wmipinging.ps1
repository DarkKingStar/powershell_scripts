$comp = Get-Content .\comp.txt

$comp

Get-WmiObject -Class win32_operatingsystem -ComputerName dcmember
Get-wmiObject -Class win32_operatingsystem -ComputerName $comp | Format-Table