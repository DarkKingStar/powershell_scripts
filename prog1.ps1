# This is single line comment
<#
    hello this is multiline comment
#>

#multiline cmdlet using (`) symbol
Get-EventLog -LogName Application -Newest 10 | `
Format-Table -autoSize -wrap | `
Out-File C:\Users\sounak\Desktop\output1.txt

cd C:\Users\sounak\Desktop
notepad.exe output1.txt


Get-Command -Verb "convertTo" | Measure-Object #list the total number of cmdlets with the verb "ConvertTo"

Get-Command convertto* # list of cmdlets


