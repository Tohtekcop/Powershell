#Search AD for a User and show their GroupMembership


$Username = Read-Host "Enter the account name."

Get-ADPrincipalGroupMembership "$Username" | select name