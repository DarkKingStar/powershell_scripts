<#
asked user to service name and my script will go to the backend and ask me the service is running or not.
If running asked user to stopped it or cancel it or vice versa
#>
$serviceName = Read-Host "Please enter a service name"
$service = Get-Service | Where-Object { $_.Name -eq $serviceName }

if ($service) {
    $flagService = If($service.Status -eq 'Running') {1} Else {0}
    $startorstop = If($flagService) {"STOP"} Else {"START"}
    $response = Read-Host "$($service.status) - Do you want to $startorstop it? (y/n)"
    if($response -eq 'y'){
        If($flagService){Stop-Service -Name $service.Name}else{Start-Service $service.Name}
    }
    $service0 = Get-Service -Name $serviceName
    Write-Host "$($service0.name) is currently $($service0.status)" -BackgroundColor Blue -ForegroundColor Red
} else {
    Write-Host "The service '$serviceName' does not exist." -BackgroundColor Red -ForegroundColor Blue
}
