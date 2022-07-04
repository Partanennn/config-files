# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons

# Load prompt config
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'aleksi.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

# Get all files from directory
function Get-AllFiles { ls -force }

# Aliases
Set-Alias vim nvim
Set-Alias ll Get-AllFiles
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'D:\Git\usr\bin\tig.exe'
Set-Alias less 'D:\Git\usr\bin\less.exe'

