# PowerShell v2/3 caches the output stream. Then it throws errors due
# to the FileStream not being what is expected. Fixes "The OS handle's
# position is not what FileStream expected. Do not use a handle
# simultaneously in one FileStream and in Win32 code or another
# FileStream."
# function Fix-PowerShellOutputRedirectionBug {
#   # http://www.leeholmes.com/blog/2008/07/30/workaround-the-os-handles-position-is-not-what-filestream-expected/
#   $bindingFlags = [Reflection.BindingFlags] "Instance,NonPublic,GetField"
#   $objectRef = $host.GetType().GetField("externalHostRef", $bindingFlags).GetValue($host)
#   $bindingFlags = [Reflection.BindingFlags] "Instance,NonPublic,GetProperty"
#   $consoleHost = $objectRef.GetType().GetProperty("Value", $bindingFlags).GetValue($objectRef, @())
#   [void] $consoleHost.GetType().GetProperty("IsStandardOutputRedirected", $bindingFlags).GetValue($consoleHost, @())
#   $bindingFlags = [Reflection.BindingFlags] "Instance,NonPublic,GetField"
#   $field = $consoleHost.GetType().GetField("standardOutputWriter", $bindingFlags)
#   $field.SetValue($consoleHost, [Console]::Out)
#   [void] $consoleHost.GetType().GetProperty("IsStandardErrorRedirected", $bindingFlags).GetValue($consoleHost, @())
#   $field2 = $consoleHost.GetType().GetField("standardErrorWriter", $bindingFlags)
#   $field2.SetValue($consoleHost, [Console]::Error)
# }

# Fix-PowerShellOutputRedirectionBug

# Write-Output "hi"
# Write-Host "---"
# Write-Warning "ruh roh"
# Write-Host "---"
# Write-Error "yep"

$installLocalFile = false
# $localChocolateyPackageFilePath = 'c:\vagrantshared\resources\packages\chocolatey.0.9.10-beta-20160402.nupkg'
$installLatestBeta = $false

$ChocoInstallPathOld = "$env:SystemDrive\Chocolatey\bin"
$ChocoInstallPath = "$env:SystemDrive\ProgramData\Chocolatey\bin"

# Put chocolatey on the MACHINE path, vagrant does not have access to user environment variables
# $envPath = $env:PATH
# if (!$envPath.ToLower().Contains($ChocoInstallPath.ToLower())) {

#   Write-Host "PATH environment variable does not have `'$ChocoInstallPath`' in it. Adding..."
#   $ActualPath = [Environment]::GetEnvironmentVariable('Path', [System.EnvironmentVariableTarget]::Machine)
#   $StatementTerminator = ";"
#   $HasStatementTerminator = $ActualPath -ne $null -and $ActualPath.EndsWith($StatementTerminator)
#   If (!$HasStatementTerminator -and $ActualPath -ne $null) {$ChocoInstallPath = $StatementTerminator + $ChocoInstallPath}
#   if (!$ChocoInstallPath.EndsWith($StatementTerminator)) {$ChocoInstallPath += $StatementTerminator}

#   [Environment]::SetEnvironmentVariable('Path', $ActualPath + $ChocoInstallPath, [System.EnvironmentVariableTarget]::Machine)
# }



$env:ChocolateyInstall = "$env:SystemDrive\ProgramData\Chocolatey"
$env:Path += ";$ChocoInstallPath"

function Install-LocalChocolateyPackage {
param (
  [string]$chocolateyPackageFilePath = ''
)

  if ($chocolateyPackageFilePath -eq $null -or $chocolateyPackageFilePath -eq '') {
    throw "You must specify a local package to run the local install."
  }

  if (!(Test-Path($chocolateyPackageFilePath))) {
    throw "No file exists at $chocolateyPackageFilePath"
  }

  if ($env:TEMP -eq $null) {
    $env:TEMP = Join-Path $env:SystemDrive 'temp'
  }
  $chocTempDir = Join-Path $env:TEMP "chocolatey"
  $tempDir = Join-Path $chocTempDir "chocInstall"
  if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
  $file = Join-Path $tempDir "chocolatey.zip"
  Copy-Item $chocolateyPackageFilePath $file -Force

  # unzip the package
  Write-Output "Extracting $file to $tempDir..."
  $shellApplication = new-object -com shell.application
  $zipPackage = $shellApplication.NameSpace($file)
  $destinationFolder = $shellApplication.NameSpace($tempDir)
  $destinationFolder.CopyHere($zipPackage.Items(),0x10)

  # Call chocolatey install
  Write-Output "Installing chocolatey on this machine"
  $toolsFolder = Join-Path $tempDir "tools"
  $chocInstallPS1 = Join-Path $toolsFolder "chocolateyInstall.ps1"

  & $chocInstallPS1

  Write-Output 'Ensuring chocolatey commands are on the path'
  $chocInstallVariableName = "ChocolateyInstall"
  $chocoPath = [Environment]::GetEnvironmentVariable($chocInstallVariableName)
  if ($chocoPath -eq $null -or $chocoPath -eq '') {
    $chocoPath = 'C:\ProgramData\Chocolatey'
  }

  $chocoExePath = Join-Path $chocoPath 'bin'

  if ($($env:Path).ToLower().Contains($($chocoExePath).ToLower()) -eq $false) {
    $env:Path = [Environment]::GetEnvironmentVariable('Path',[System.EnvironmentVariableTarget]::Machine);
  }
}

if (!(Test-Path $ChocoInstallPath)) {
  # Install Chocolatey
  if ($installLocalFile) {
    Install-LocalChocolateyPackage $localChocolateyPackageFilePath
  } else {
    if ($installLatestBeta) {
      iex ((new-object net.webclient).DownloadString('https://chocolatey.org/installabsolutelatest.ps1'))
    } else {
      iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
    }
  }
}

# # choco upgrade chocolatey -pre
# $resourcesPath = 'c:\vagrantshared\resources\packages'
# $chocoPkgFile = get-childitem $resourcesPath -recurse -include 'chocolatey.*.nupkg' | select -First 1

# if ($chocoPkgFile -ne $null) {
#   choco upgrade chocolatey -pre -force -source "$resourcesPath"
# } else {
#   choco upgrade chocolatey -pre
# }


