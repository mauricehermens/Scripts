# Script to add a service account user using UserName+WebServiceKey authentication.
# Excecute this script in a elevated 'Powershell ISE' session (Run as administrator).
# Excecute this script on the server running Microsoft Dynamics 365 Business Central Server.
# Created by 4PS-MB / DKMV4PS

$BCVersion       = '180' #Version of Business Central, i.e. '180' or '190'
$ServerInstance  = 'BCTSTO365' #Enter the name of the NST where the user is going to be added, i.e. 'BCS160Test'
$UserName        = 'BC-SA-APP1' #Enter the username of the user, i.e. 'APPUSER'
$FullName        = 'Service account app1' #Description (full name) of the user, i.e. 'Service account for app XYZ'
$PermissionSetID = 'SUPER' #Permissions in Business Central, i.e. 'SUPER'
$Tenant          = 'abc123'

Import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\$BCVersion\Service\NavAdminTool.ps1" # Change version if nessecery, i.e. '150' or '160' or '170' or '180' or '190'.
New-NAVServerUser -UserName $UserName -CreateWebServicesKey -FullName $FullName -ServerInstance $ServerInstance -Tenant $Tenant
New-NAVServerUserPermissionSet -PermissionSetId $PermissionSetID -UserName $UserName -ServerInstance $ServerInstance -Tenant $Tenant
Get-NAVServerUser -ServerInstance $ServerInstance -Tenant $Tenant | Where-Object {$_.UserName -eq $UserName} | Select-Object -Property UserName, FullName, State, WebServicesKey | Format-Table
