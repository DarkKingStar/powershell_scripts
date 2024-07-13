<#
asked user to service name and my script will go to the backend and ask me the service is running or not.
If running asked user to stopped it or cancel it or vice versa
#>
$serviceName = Read-Host "Please enter a service name"
$service = Get-Service -Name $serviceName
if ($service) {
    $flagService = $service.Status -eq 'Running'
    $startorstop = If($flagService) {"STOP"} Else {"START"}
    $response = Read-Host "$($service.status) - Do you want to $startorstop it? (y/n)"
    if(($response -eq 'y') -or ($response -eq  'yes')){
        If($flagService){Stop-Service -Name $service.Name}else{Start-Service $service.Name}
    }
    $service0 = Get-Service -Name $serviceName
    If($service0.Status -ne $service.Status) {
        Write-Host "$($service0.name) is currently $($service0.status)" -BackgroundColor Blue -ForegroundColor Red
    }
} else {
    Write-Host "The service '$serviceName' does not exist." -BackgroundColor Red -ForegroundColor Blue
}
