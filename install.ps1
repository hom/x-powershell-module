# Get current root location directory
$location = Get-Location
$modules = Get-ChildItem -Path "$location\src\" -Directory

foreach ($module in $modules) {
    Write-Host $module
    # 添加软链接到用户模块目录
    New-Item -ItemType SymbolicLink -Path "$HOME\Documents\WindowsPowerShell\Modules\$module" -Target "$location\src\$module" -Force
}
