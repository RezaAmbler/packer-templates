# This is super incosistent, but not a hard requirement, so ErrorActionPreference will help us prevent needless build fails
$ErrorActionPreference = "SilentlyContinue"
$ProgressPreference="SilentlyContinue"


if  ($env:proxy_enabled) {
        Write-Output "==> Updating powershell help files with proxy"
        [system.net.webrequest]::defaultwebproxy = new-object system.net.webproxy("$env:http_proxy")
        update-help -force -verbose
        Write-Output "==> Clearing proxy configuration"
        [system.net.webrequest]::defaultwebproxy = new-object system.net.webproxy($null)
        Write-Output "==> Completed updating powershell help files"
	}
    Else {
        Write-Output "==> Updating powershell help files without proxy"
        update-help -force -verbose
        Write-Output "==> Completed updating powershell help files"
    }