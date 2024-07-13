while(1){
    switch(Read-Host "1.display ip address 2.ping google 3.open notepad 4.exit`nEnter your choose"){
        "1"{
            $ip = Get-NetIPAddress | Where-Object {($_.ifIndex -eq 12) -and ($_.PrefixOrigin -eq "Dhcp")} | Select-Object IPAddress
            Write-Host "Your Ip address is: " -NoNewline
            Write-Host $ip.IPAddress -ForegroundColor Blue
        }
        "2"{
            Test-Connection google.com
            Test-Connection google.co.in
        }
        "3"{
            Start-Process 'C:\windows\system32\notepad.exe'
        }
        "4"{
            exit
        }
        default{Write-Host "invalid choose"}
    }
}