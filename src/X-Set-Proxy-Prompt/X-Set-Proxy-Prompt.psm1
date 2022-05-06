function X-Set-Proxy-Prompt () {
  "[PROXY] $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
}

New-Alias -Name Prompt -Value X-Set-Proxy-Prompt -Scope Global

Export-ModuleMember -Function X-Set-Proxy-Prompt
Export-ModuleMember -Alias Prompt
