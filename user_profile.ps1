# Powershell Theme
$omp_config = Join-Path $PSScriptRoot ".\michael.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# PowerShell UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Posh Git
Import-Module posh-git

# Terminal Icons
Import-Module -Name Terminal-Icons

# Z
Import-Module -Name z

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
set-psreadlineoption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None

# Alias
Set-Alias c cls
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig "C:\Program Files\Git\usr\bin\tig.exe"
Set-Alias less "C:\Program Files\Git\usr\bin\less.exe"
Set-Alias find "C:\Program Files\Git\usr\bin\find.exe"
# git config --global alias.co checkout
# git config --global alias.br branch
# git config --global alias.ci commit
# git config --global alias.st status

# Utilities
function whereis ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
