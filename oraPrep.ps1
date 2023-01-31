<#
    Script : oraPrep.ps1
	USAGE : ${SCRIPT}
	ARGS : None
	DESC : Creates a local Windows user for Oracle
#>
# Prep the system for Oracle software owner

# Encrypted user password. User is set in 3rd decision block
$usrPass = ConvertTo-SecureString 'OrA_Sup3r_Pa55' -AsPlainText -Force

New-LocalUser -Name "oracle" -Password $usrPass -FullName "Oracle Admin" -Description "Oracle Admin"
# Oracle installer complains if user is an admin. 
# The following gives the "oracle" user some extra privs without admin rights.
Add-LocalGroupMember -Group "Power Users" -Member "oracle"