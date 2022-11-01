# Get param from terminal
param (
    [string] $Scope = "AllUsers"
)
# Get current root location directory
$location = Get-Location
$modules = Get-ChildItem -Path "$location\src\" -Directory

function Test-Adminstrator {
    [bool] ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
}

if (Test-Adminstrator) {
    foreach ($module in $modules) {
        Write-Host $module
        # 添加软链接到当前用户模块目录
        if ($Scope -eq "CurrentUser") {
            $MyDocuments = [Environment]::GetFolderPath("MyDocuments")
            New-Item -ItemType SymbolicLink -Path "$MyDocuments\WindowsPowerShell\Modules\$module" -Target "$location\src\$module" -Force
        }
        
        # 添加软连接到所有用户模块目录
        if ($Scope -eq "AllUsers") {
            New-Item -ItemType SymbolicLink -Path "$env:ProgramFiles\WindowsPowerShell\Modules\$module" -Target "$location\src\$module" -Force
        }
    }
} else {
    Write-Error "This script neetd to run as Adminstrator"
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File $PSCommandPath" -Verb RunAs
}
