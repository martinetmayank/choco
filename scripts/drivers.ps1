function Drivers {
    param (
        [string]$Title = ""
    )
    Write-Host "Installing VC Redist..."
    choco install vcredist-all

    Write-Host "Installing Nvidia Dilplay Drivers..."
    choco install nvidia-display-driver

    Write-Host "Drivers sucessfully installed..."
}

Drivers