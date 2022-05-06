function X-Remove-Proxy () {
  Remove-Item Env:HTTP_PROXY
  Remove-Item Env:HTTPS_PROXY
  Write-Host "Remove proxy channel"
}

New-Alias -Name xrp -Value X-Remove-Proxy -Scope Global

Export-ModuleMember -Function X-Remove-Proxy
Export-ModuleMember -Alias xrp