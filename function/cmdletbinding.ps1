function Set-Feedback {
    [cmdletbinding()]
    param (
        [parameter(Mandatory=$true)]
        [ValidateSet('awesome','aweful','no idea')]
        [string] $fb
    )
    return "this training is: $fb"
}

Set-Feedback -fb 'no idea'
Set-Feedback -fb 'aweful'
Set-Feedback -fb 'okay'