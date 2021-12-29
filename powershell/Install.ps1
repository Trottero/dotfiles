# Installs and moves the right things everywhere

# Copy powershell profile to the right place
mkdir -Force ~/Documents/WindowsPowerShell
Copy-Item $PSScriptRoot/Profile.ps1 -Destination $Profile

# Add Oh My Posh profile
mkdir -Force ~/.omp

Copy-Item $PSScriptRoot/aliens.omp.json -Destination ~/.omp/aliens.omp.json