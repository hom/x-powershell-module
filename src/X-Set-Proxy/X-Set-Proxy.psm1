function X-Set-Proxy () {
  Set-Item Env:HTTP_PROXY -Value 'http://127.0.0.1:7890'
  Set-Item Env:HTTPS_PROXY -Value 'http://127.0.0.1:7890'
  Write-Host "Set proxy channel"
}
function X-Remove-Proxy () {
  Remove-Item Env:HTTP_PROXY
  Remove-Item Env:HTTPS_PROXY
  Write-Host "Remove proxy channel"
}

New-Alias -Name xsp -Value X-Set-Proxy -Scope Global
New-Alias -Name xrp -Value X-Remove-Proxy -Scope Global

Export-ModuleMember -Function X-Set-Proxy
Export-ModuleMember -Function X-Remove-Proxy
Export-ModuleMember -Alias xsp
Export-ModuleMember -Alias xrp