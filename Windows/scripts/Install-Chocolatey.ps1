$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "stop"
$env:chocolateyUseWindowsCompression = 'false'
$env:chocolateyProxyLocation = $env:proxy_string

if ($env:proxy_enabled -contains 'true') {
    Write-Output "==> Installing chocolatey using Squid $env:proxy_string"
#    $env:chocolateyProxyLocation = 'http://us1rhprox01.corp.resmed.org:32611'
    Invoke-WebRequest -Proxy "$env:proxy_string" -Uri 'https://chocolatey.org/install.ps1' -UseBasicParsing | Invoke-Expression
  } Else {
    Write-Output "==> Installing chocolatey without proxy"
    Invoke-WebRequest -Uri 'https://chocolatey.org/install.ps1' -UseBasicParsing | Invoke-Expression
  }
