$fileName = Read-Host "Enter the File Name"

Write-Host "Searching for the file in C:/ drive...Please Wait"

$currentlocation = "C:/"


# $Items = Get-ChildItem  -Path $currentlocation -filter $fileName -Recurse -Force -ErrorAction SilentlyContinue
$allItems = Get-ChildItem -Path $currentlocation -Recurse -Force -ErrorAction SilentlyContinue

$foldersCount = ($allItems | Where-Object {$_.PSIsContainer}).Count

$filesCount = $allItems.Count - $foldersCount

Write-Host "Searching through $foldersCount folders and $filesCount files..."

$item = $allItems | Where-Object {$_.Name -eq $fileName}

if($item.Count -gt 0){
    Write-Host "$($fileName) is/are located at $($item.Count) Locations:"
    foreach($i in $item.FullName){
        Write-Host $i -ForegroundColor Blue
    }
}else{
    Write-Host "$($fileName) is not found" -ForegroundColor DarkMagenta
}


