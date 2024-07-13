<#
ping 5 website using
        - function
        - pipeline
        - import sites from text file
#>

function Ping-Pls(){
    param(
        [string] $dom
        )
    if(Test-Connection $dom -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$dom is pingable" -ForegroundColor Green
    }
    else{
        Write-Host "$dom is Not pingable" -ForegroundColor Red
        # $i | Out-File -Append C:\out.txt
    }
}

$web = Get-Content C:\Users\sounak\Desktop\practice\function\new.txt

$web | ForEach-Object {
    Ping-Pls -dom $_
}
