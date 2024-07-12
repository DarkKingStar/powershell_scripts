#list top 10 unique processes with high CPU usage

Get-Process |`
Sort-Object ProcessName -Unique |`
Sort-Object CPU -Descending |`
Select-Object Id, ProcessName, CPU -First 10
