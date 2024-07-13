# ping each of top 500 website + moz.com

cls
# read csv file
$web = Import-Csv .\top500websitelist.csv

Remove-Item -Path C:\out.txt -ErrorAction SilentlyContinue
foreach($i in $web){
    if(Test-Connection $i.RootDomain -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$($i.RootDomain) is pingable" -ForegroundColor Green
    }
    else{
        Write-Host "$($i.RootDomain) is Not pingable" -ForegroundColor Red
        $i.RootDomain | Out-File -Append .\csvout.txt
    }
}
