# Theme (Dracula Customization)
$omp_config = Join-Path $PSScriptRoot ".\ftmichael.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# Posh Git (Install-Module -Name posh-git)
Import-Module posh-git

# Terminal Icons (Install-Module -Name Terminal-Icons)
Import-Module Terminal-Icons

# Z (Install-Module -Name z)
Import-Module z

# PSReadLine (Install-Module -Name PSReadLine)
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle InlineView

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig "C:\Program Files\Git\usr\bin\tig.exe"
Set-Alias less "C:\Program Files\Git\usr\bin\less.exe"

# Whereis Function
function whereis ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

# Touch Function
function touch {
  Param(
    [Parameter(Mandatory=$true)]
    [string]$Path
  )

  if (Test-Path -LiteralPath $Path) {
    (Get-Item -Path $Path).LastWriteTime = Get-Date
  } else {
    New-Item -Type File -Path $Path
  }
}
