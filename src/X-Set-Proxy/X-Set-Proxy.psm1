function X-Set-Proxy () {
  Set-Item Env:http_proxy -Value 'http://127.0.0.1:7890'
  Set-Item Env:https_proxy -Value 'http://127.0.0.1:7890'
}

New-Alias xsp X-Set-Proxy

Export-ModuleMember -Function X-Set-Proxy
Export-ModuleMember -Alias xsp