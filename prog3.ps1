Get-Process |`
Sort-Object ProcessName -Unique |`
Select-Object ProcessName, Id |`
ConvertTo-Json |`
Out-File processunique.json

Get-Process |`
Sort-Object ProcessName -Unique |`
Select-Object ProcessName, Id |`
ConvertTo-Html |`
Out-File processunique.html

Get-Process |`
Sort-Object ProcessName -Unique |`
Select-Object ProcessName, Id |`
ConvertTo-Csv |`
Out-File processunique.csv

Get-Process |`
Sort-Object ProcessName -Unique |`
Select-Object ProcessName, Id |`
Export-Clixml processunique.xml

