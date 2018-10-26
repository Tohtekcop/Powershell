#Search AD for a User and show their GroupMembership


$Username = Read-Host "Enter the account name."

Get-ADPrincipalGroupMembership "$Username" | select name |
export-csv 'C:\Users\CE137454\Documents\Mystuff\Export.csv' -NoType

