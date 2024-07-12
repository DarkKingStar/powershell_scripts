# key-value pairs

$ht0 = @{}
$ht0.GetType()

$ht1 = @{Name="Sounak"; Team="White House"; Trainer = "Jeetu"}
$ht1
$ht1.keys
Write-Host "`n"
$ht1.values
$ht1.Add("hello","world")
$h1.Remove("hello")

$ht2 = [Ordered]@{Name="Sounak"; Team="White House"; Trainer = "Jeetu"}
$ht2.GetType()

