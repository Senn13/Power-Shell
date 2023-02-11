# Theme
$omp_config = Join-Path $PSScriptRoot ".\ftmichael.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Posh Git
Import-Module posh-git

# Terminal Icons
Import-Module -Name Terminal-Icons

# Z
Import-Module -Name z

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
set-psreadlineoption -PredictionViewStyle InlineView
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig "C:\Program Files\Git\usr\bin\tig.exe"
Set-Alias less "C:\Program Files\Git\usr\bin\less.exe"
Set-Alias find "C:\Program Files\Git\usr\bin\find.exe"

# Utilities
function whereis ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
