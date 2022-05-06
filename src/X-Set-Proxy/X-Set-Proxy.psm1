function X-Set-Proxy () {
  Set-Item Env:HTTP_PROXY -Value 'http://127.0.0.1:7890'
  Set-Item Env:HTTPS_PROXY -Value 'http://127.0.0.1:7890'
  Write-Host "Set proxy channel"
}

New-Alias -Name xsp -Value X-Set-Proxy -Scope Global

Export-ModuleMember -Function X-Set-Proxy
Export-ModuleMember -Alias xsp