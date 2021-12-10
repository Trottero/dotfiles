Write-Host (Get-Date)
$hr = Get-Date -Format HH
$greeting = "AYE"

if (($hr -gt 0 -And $hr -lt 12) -Or ($hr -eq 0)) {
    $greeting = "Good morning"
}
elseif ($hr -gt 11 -And $hr -lt 18) {
    $greeting = "Good afternoon"
}
elseif ($hr -gt 17 -And $hr -lt 24) {
    $greeting = "Good evening"
}

Write-Host $greeting', Niels'
Write-Host ''

if ($env:TERM_PROGRAM -eq "vscode") {
    Set-PSReadLineOption -EditMode Emacs
}

$Env:VIRTUAL_ENV_DISABLE_PROMPT = $true

Set-PSReadlineOption -BellStyle None

oh-my-posh --init --shell pwsh --config ~/.omp/aliens.omp.json | Invoke-Expression