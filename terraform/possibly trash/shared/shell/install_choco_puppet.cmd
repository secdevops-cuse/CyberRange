::echo 'Ensuring .NET 4.0 is installed'
:: @powershell -NoProfile -ExecutionPolicy Bypass -File "c:\vagrantshared\shell\InstallNet4.ps1"

:: all of this will be executed after the system is setup.  This will have to be sync'd over to the target system and executed
echo 'Ensuring Chocolatey is Installed'
@powershell -NoProfile -ExecutionPolicy Bypass -File "c:\vagrantshared\shell\InstallChocolatey.ps1"

echo 'Install puppet if missing'
@powershell -NoProfile -ExecutionPolicy Bypass -File "c:\vagrantshared\shell\InstallPuppetFromMSI.ps1"

echo 'Install python/pip'
@powershell -NoProfile -ExecutionPolicy Bypass -File "c:\vagrantshared\shell\install_python.ps1"

