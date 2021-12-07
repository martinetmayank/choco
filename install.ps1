function Show-Menu {
    param (
        [string]$Title = "MENU"
    )
    Clear-Host
    Write-Host "================ $Title ================"
    Write-Host "1. Install Chocolatey"
    Write-Host "2. Install ALL Main apps"
    Write-Host "3. Install VSCode Extensions"
    Write-Host "4. Install Developer Tools"
    Write-Host "5. Install Drivers"
    Write-Host "6. Install CUDA"
    Write-Host "7. Install NodeJS Tools"
    Write-Host "Q. Quit"
}

Write-Host "MENU"
Show-Menu


$selection = Read-Host "Enter your choice"

switch ($selection) {
    '1' { .\scripts\choco.ps1 }
    '2' { .\scripts\all.ps1 }
    '3' { .\scripts\extensions.ps1 }
    '4' { .\scripts\developer.ps1 }
    '5' { .\scripts\drivers.ps1 }
    '6' { .\scripts\cuda.ps1 }
    '7' { .\scripts\node.ps1 }
    'Q' { return }

}