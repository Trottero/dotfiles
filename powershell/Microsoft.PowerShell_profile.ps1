Write-Host (Get-Date)
$hr = Get-Date -Format HH
$greeting = "AYE"
if ($hr -gt 0 -And $hr -lt 12) {
    $greeting = "Good morning"
}
elseif ($hr -gt 12 -And $hr -lt 18) {
    $greeting = "Good afternoon"
}
elseif ($hr -gt 18 -And $hr -lt 24) {
    $greeting = "Good evening"
}

Write-Host $greeting', Niels'
Write-Host ''

if ($env:TERM_PROGRAM -eq "vscode") {
    Set-PSReadLineOption -EditMode Emacs
}

Set-PSReadlineOption -BellStyle None

oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/aliens.omp.json | Invoke-Expression