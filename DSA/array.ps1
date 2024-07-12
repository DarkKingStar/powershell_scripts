$arr0 = @(1,2,3,4,5)
$arr0.GetType()

$arr1 = 6,7,8,9,10
$arr1.GetType()

$arr2 = $arr0 + $arr1 # arr0, arr1
cls
$arr2

$arr3 = @(1,2,3,4,5,6,7,8,9,10)
$arr3.count
$arr3[0]
$arr3[1]
$arr3[-1]

$arr3[1..3]
$arr3[-1..-3]

$arr = @( @(1,2), @("sounak","guha"), @(Get-Process))
$arr[2][0]


