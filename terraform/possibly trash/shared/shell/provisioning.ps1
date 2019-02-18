$PuppetFile = 'c:\vagrant\puppet\Puppetfile'

if (Test-Path $PuppetFile) {
    $PuppetInstallPath = "$env:SystemDrive\Program Files\Puppet Labs\Puppet"
    if (!(Test-Path $PuppetInstallPath)) {$PuppetInstallPath = "$env:SystemDrive\Program Files (x86)\Puppet Labs\Puppet";}

    Write-Host "Ensuring environment for puppet - this puts the puppet ruby on the path for librarian"
    $env:Path += ";$PuppetInstallPath\bin;$PuppetInstallPath\sys\ruby\bin;$PuppetInstallPath\sys\tools\bin;$PuppetInstallPath\puppet\bin;$PuppetInstallPath\facter\bin;$PuppetInstallPath\cfacter\bin;$PuppetInstallPath\hiera\bin;$PuppetInstallPath\mcollective\bin;"

    $env:FACTER_domain='local'

    $CommonAppDataPath = [Environment]::GetFolderPath([Environment+SpecialFolder]::CommonApplicationData)
    $PuppetAppDataPath = Join-Path $CommonAppDataPath 'PuppetLabs\puppet'
    $PuppetEtcPath = Join-Path "$PuppetAppDataPath" 'etc'

    if (!(Test-Path $PuppetEtcPath)) {
      Write-Host "Creating folder `'$PuppetEtcPath`'"
      $null = New-Item -Path "$PuppetEtcPath" -ItemType Directory
    }

    Copy-Item "$PuppetFile" "$PuppetEtcPath"

    Push-Location "$PuppetEtcPath"

    # https://gist.github.com/luislavena/f064211759ee0f806c88
    $rubygems = &gem which rubygems
    $ssl_cert_location = $rubygems.Replace(".rb","/ssl_certs/AddTrustExternalCARoot-2048.pem")
    $ssl_cert_url = 'https://raw.githubusercontent.com/rubygems/rubygems/master/lib/rubygems/ssl_certs/AddTrustExternalCARoot-2048.pem'
    &curl.exe -o "$ssl_cert_location" "$ssl_cert_url"

    Write-Host "Ensuring librarian puppet"
    try {
        $ErrorActionPreference = "Stop";
        Get-Command librarian-puppet
        Write-Host "Running librarian-puppet update"
        & librarian-puppet update
    } catch {
        Write-Host "Installing librarian puppet"
        & gem install librarian-puppet --no-ri --no-rdoc
        Write-Host "Running librarian-puppet install --clean"

        & librarian-puppet install --clean
    } finally {
        $ErrorActionPreference = "Continue";
        Pop-Location
    }
}