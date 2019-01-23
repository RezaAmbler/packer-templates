$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "Stop"


if ($PSVersionTable.PSVersion.Major -le 4) {
    if ($env:proxy_enabled -contains 'true') {
      Write-Host "==> Installing Newer Version of PowerShell"
      $env:chocolateyProxyLocation = $env:http_proxy
      choco install powershell -y --no-progress
    }
    else {
      Write-Host "==> Installing Newer Version of PowerShell"
      choco install powershell -y --no-progress 
    }
  } else {
    Write-Host "==> Not installing PowerShell as it is 5+"
  }
