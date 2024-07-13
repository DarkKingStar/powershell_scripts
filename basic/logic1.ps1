Get-NetIPAddress | Where-Object {($_.ifIndex -eq 12) -and ($_.PrefixOrigin -eq "Dhcp")}
$ip = Get-NetIPAddress | Where-Object {($_.ifIndex -eq 12) -and ($_.PrefixOrigin -eq "Dhcp")} | Select-Object IPAddress
Write-Host "Your Ip address is: " -NoNewline
Write-Host $ip.IPAddress -ForegroundColor Blue