function X-New-Problem ($name) {
  $directory = Join-Path -Path D:\Repository\leetcode\src\ -ChildPath $name
  if ((Test-Path $directory) -eq "True") {
    return Write-Warning(-Join('The directory ', $directory, ' is already exists.'))
  }
  New-Item -Type Directory -Path $directory
  New-Item $directory\index.js
  New-Item $directory\problem.md
  New-Item $directory\test.js
  New-Item $directory\main.py
  New-Item $directory\main.c
  New-Item $directory\main.cpp
  New-Item $directory\main.rs
}

New-Alias -Name xnp -Value X-New-Problem -Scope Global

Export-ModuleMember -Function X-New-Problem
Export-ModuleMember -Alias xnp