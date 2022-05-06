function X-Set-Proxy-Prompt () {
  "PROXY $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
}

New-Alias -Name prompt -Value X-Set-Proxy -Scope Global

Export-ModuleMember -Function X-Set-Proxy-Prompt
Export-ModuleMember -Alias prompt
