$ProgressPreference="SilentlyContinue"
$ErrorActionPreference = "stop"
$env:chocolateyUseWindowsCompression = 'false'
$env:chocolateyProxyLocation = $env:http_proxy

if ($env:proxy_enabled -contains 'true') {
    Write-Output "==> Installing chocolatey using Squid $env:http_proxy"
#    $env:chocolateyProxyLocation = 'http://us1rhprox01.corp.resmed.org:32611'
    Invoke-WebRequest -Proxy "$env:http_proxy" -Uri 'https://chocolatey.org/install.ps1' -UseBasicParsing | Invoke-Expression
  } Else {
    Write-Output "==> Installing chocolatey without proxy"
    Invoke-WebRequest -Uri 'https://chocolatey.org/install.ps1' -UseBasicParsing | Invoke-Expression
  }