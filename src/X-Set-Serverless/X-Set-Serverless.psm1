function X-Set-Serverless ($Key, $Secret) {
  Set-Item Env:SERVERLESS_PLATFORM_VENDOR -Value 'aws'
  Set-Item Env:SLS_GEO_LOCATION -Value 'us'
  Set-Item Env:AWS_ACCESS_KEY_ID -Value $Key
  Set-Item Env:AWS_SECRET_ACCESS_KEY -Value $Secret
  Write-Warning "Set serverless variable"
}

New-Alias -Name xss -Value X-Set-Serverless -Scope Global

Export-ModuleMember -Function X-Set-Serverless
Export-ModuleMember -Alias xss