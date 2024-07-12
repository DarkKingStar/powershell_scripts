<#
asked user to service name and my script will go to the backend and ask me the service is running or not.
If running asked user to stopped it or cancel it or vice versa
#>
$serviceName = Read-Host "Please enter a service name"
$service = Get-Service | Where-Object { $_.Name -eq $serviceName }

if ($service) {
    if ($service.Status -eq 'Running') {
        $response = Read-Host "RUNNING - Do you want to stop it? (y/n)"
        if ($response -eq 'y') {
            Stop-Service -Name $serviceName
        }
    } else {
        $response = Read-Host "STOPPED - Do you want to start it? (y/n)"
        if ($response -eq 'y') {
            Start-Service -Name $serviceName 
        }
    }
    $service0 = Get-Service -Name $serviceName
    Write-Host "$($service0.serviceName) is currently $($service0.status)"
} else {
    Write-Host "The service '$serviceName' does not exist."
}
