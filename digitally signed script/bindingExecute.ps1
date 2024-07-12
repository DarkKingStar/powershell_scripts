#Get-Command *pfx*

#Get-Help Set-AuthenticodeSignature -Online

$cert = Get-ChildItem Cert:\CurrentUser\My\1DECA67B01F669A1C3735145E0CADBF6070D3E77
$filepath = 'C:\Users\sounak\Desktop\practice\digitally signed script\script.ps1'
Set-AuthenticodeSignature -FilePath $filepath $cert

# display the results
Get-AuthenticodeSignature -filepath 'C:\Users\sounak\Desktop\practice\digitally signed script\script.ps1'