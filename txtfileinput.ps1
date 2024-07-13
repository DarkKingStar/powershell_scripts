cls
# read txt file
$web = Get-Content C:\new.txt
# read csv file
# $web = Import-Csv C:\new.csv
# read json file
# $web = Get-Content C:\new.json
foreach($i in $web){
    if(Test-Connection $i -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$i is pingable" -ForegroundColor Green
    }
    else{
        Write-Host "$i is Not pingable" -ForegroundColor Red
        $i | Out-File -Append C:\out.txt
    }
}
