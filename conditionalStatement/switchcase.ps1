$i = 1
while($i){
    switch(Read-Host "1.display ip address 2.ping google 3.open notepad 4.exit`nEnter your choose"){
        "1"{
            $ip = Get-NetIPAddress | Where-Object {($_.ifIndex -eq 12) -and ($_.PrefixOrigin -eq "Dhcp")} | Select-Object IPAddress
            Write-Host "Your Ip address is: " -NoNewline
            Write-Host $ip.IPAddress -ForegroundColor Blue
        }
        "2"{
            if(Test-Connection google.caom -Count 2 -ErrorAction SilentlyContinue){ #remove error msg
                Write-Host "Google is pingable" -ForegroundColor Green
            }else{
                Write-Host "Google is not pinging" -ForegroundColor Red
            }
        }
        "3"{
            Start-Process notepad.exe
        }
        "4"{
            $i = 0
        }
        default{Write-Host "invalid choose"}
    }
}