
#This will ask you to input the group name then list out the First, Last and CE#

import-module ActiveDirectory

$groupName = Read-Host "Enter the account name."

$infoMember = Get-AdgroupMember "$groupName"
foreach ($member in $infoMember) { get-aduser $member.samaccountname -properties displayname | select displayname, name |  
export-csv 'C:\Users\CE137454\Documents\Mystuff\Group1.csv' -NoType -Append -Force}
