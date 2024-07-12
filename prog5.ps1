#get the executive policy
Get-ExecutionPolicy

#to change the policy - as admin only
Set-ExecutivePolice Unrestriced

#verify
Get-ExecutionPolicy

<#
    To create a digitally signed script
        1. create a script
        2. create a digital certificate
        3. bind the script & certificate
#>