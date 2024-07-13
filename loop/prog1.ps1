$arr = @(1..5)

foreach($n in $arr){
    $n
}

$web = @("google.com", "ltimindtree.com", "amazon.com")

foreach($i in $web){
    if(Test-Connection $i -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$i is pingable" -ForegroundColor Green
    }
    else{
        Write-Host "$i is Not pingable" -ForegroundColor Red
    }
}