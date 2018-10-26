#Search AD for a User and show their GroupMembership
Import-Module ActiveDirectory

$Username = Read-Host "Enter the account name."

Get-ADPrincipalGroupMembership "$Username" | select name