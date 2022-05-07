function X-Remove-Proxy-Prompt () {
  "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) ";
  # .Link
  # https://go.microsoft.com/fwlink/?LinkID=225750
  # .ExternalHelp System.Management.Automation.dll-help.xml
}

New-Alias -Name Prompt -Value X-Remove-Proxy-Prompt -Scope Global -Force

Export-ModuleMember -Function X-Remove-Proxy-Prompt
Export-ModuleMember -Alias Prompt
