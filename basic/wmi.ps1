Write-Host "total no of WMIObject is:"
$(Get-WmiObject -List | Measure-Object).Count
Write-Host "total no of WMIObject that start with win32 is:"
$(Get-WmiObject -List | Where-Object {$_.name -match "^win32_"} | Measure-Object).Count

$(Get-WmiObject -List | Where-Object {($_.name -match "^win32_") -and ($_.name -like "*bios*")})

Get-WmiObject -Class win32_bios
Get-WmiObject -Class win32_computersystem
Get-WmiObject -Class win32_operatingsystem
Get-WmiObject -Class win32_logicaldisk | Format-Table -AutoSize -Wrap