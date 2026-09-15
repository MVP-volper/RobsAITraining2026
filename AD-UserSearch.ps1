nltest /dsgetdc:hq.mvphealthcare.com

Import-Module ActiveDirectory

Get-ADUser `
    -Server PRD-ADSDCR0004.hq.mvphealthcare.com `
    -Filter "Name -like 'reed*'" `
    -Properties SamAccountName,UserPrincipalName,DisplayName,Surname,GivenName |
Select-Object Name,SamAccountName,UserPrincipalName,GivenName,Surname
