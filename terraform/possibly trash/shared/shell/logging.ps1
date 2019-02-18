<powershell>
New-EventLog -LogName aws_automation -Source 'aws_automation' -MessageResourceFile "C:\Users\Administrator\Desktop\aws_automation.log"

Write-EventLog -LogName Application -Source 'SCC Demo' -EventId 1 -EntryType Information -Message 'Beginning post-deployment configuration script'

#Install SNMP
Add-WindowsFeature SNMP-Service

#Disable IPv6
$regPath = 'HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters'
New-ItemProperty -Path $regPath -Name 'DisabledComponents' -Value '0xFFFFFFFF'

#Enable WMI
Get-NetFirewallRule -DisplayName 'Windows Management Instrumentation*' | Enable-NetFirewallRule

Write-EventLog -LogName Application -Source 'SCC Demo'  -EventId 1 -EntryType Information  -Mes
</powershell>
