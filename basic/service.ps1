Get-Service # to list all running $ stopped services
Get-service -Name XblGameSave # one specific service


# list all the service names of running services
Get-Service | Where-Object {
    $_.status -eq "running"
} | Select-Object Name 
Get-Service | Where-Object {
    ($_.status -eq "running") -and ($_.Name -match '^s')
} | Select-Object Name 
Get-Service | Where-Object {
    ($_.status -eq "running") -and ($_.Name -match 's%')
} | Select-Object Name 
Get-Service | Where-Object {
    ($_.status -eq "running") -and ($_.Name -like '*ss*')
} | Select-Object Name 
