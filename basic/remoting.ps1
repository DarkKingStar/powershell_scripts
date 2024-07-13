<#
    Remoting
        - persistent remoting
        1-to-1 remoting
        - non-persistent remoting
        1-to-many remoting
#>

#non-persistent remoting
# $comp = Get-Content .\comp.txt
Invoke-Command -ComputerName "My-default-pc" -ScriptBlock {
    New-Item -Path C:\Users\sounak\Desktop\practice\basic -Name PSTortureDay4 -ItemType Directory -Force
    New-Item -Path C:\Users\sounak\Desktop\practice\basic\PSTortureDay4 -Name ReadME.txt -ItemType File -Force
    Set-Content -Path C:\Users\sounak\Desktop\practice\basic\PSTortureDay4\ReadME.txt -Value "What im doing and why im doing? I want to go back home" -Force
}