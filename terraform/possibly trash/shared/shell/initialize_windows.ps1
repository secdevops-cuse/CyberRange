
#####
#DON'T FORGET TO SET/CHANGE THE USERNAME/PASSWORD BELOW!
#####

$start = Get-Date
$user="terraform"
$password="terraform"

# Disable password complexity requirements
$seccfg = [IO.Path]::GetTempFileName()
secedit /export /cfg $seccfg
(Get-Content $seccfg) | Foreach-Object {$_ -replace "PasswordComplexity\s*=\s*1", "PasswordComplexity=0"} | Set-Content $seccfg
secedit /configure /db $env:windir\security\new.sdb /cfg $seccfg /areas SECURITYPOLICY
del $seccfg

# Create a user with password, add to Admin group
$admin = [adsi]("WinNT://./administrator, user")
$admin.psbase.invoke("SetPassword", $password)

net user /add $user $password;
net localgroup Administrators /add $user;

# These commands are necessary only if the target machine is being
# used as a Chef node and you want to bootstrap it. They do not need
# to appear on a "workstation" machine.
#
# Get the instance ready for Chef bootstrapper


# WinRM
#write-output "Setting up WinRM"
#write-host "(host) setting up WinRM"

#cmd.exe /c winrm quickconfig -q
#cmd.exe /c winrm quickconfig '-transport:http'
#cmd.exe /c winrm set "winrm/config" '@{MaxTimeoutms="1800000"}'
#cmd.exe /c winrm set "winrm/config/winrs" '@{MaxMemoryPerShellMB="1024"}'
#cmd.exe /c winrm set "winrm/config/service" '@{AllowUnencrypted="true"}'
#cmd.exe /c winrm set "winrm/config/client" '@{AllowUnencrypted="true"}'
#cmd.exe /c winrm set "winrm/config/service/auth" '@{Basic="true"}'
#cmd.exe /c winrm set "winrm/config/client/auth" '@{Basic="true"}'
#cmd.exe /c winrm set "winrm/config/service/auth" '@{CredSSP="true"}'
#cmd.exe /c winrm set "winrm/config/listener?Address=*+Transport=HTTP" '@{Port="5985"}'
#cmd.exe /c netsh firewall add portopening TCP 5985 "Port 5985"
#cmd.exe /c net stop winrm
#cmd.exe /c sc config winrm start= auto
#cmd.exe /c net start winrm

# Disable Internet Explorer Security
# http://stackoverflow.com/a/9368555/2067999
$AdminKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}"
$UserKey = "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}"
Set-ItemProperty -Path $AdminKey -Name "IsInstalled" -Value 0
Set-ItemProperty -Path $UserKey -Name "IsInstalled" -Value 0

netsh advfirewall set allprofiles state off


