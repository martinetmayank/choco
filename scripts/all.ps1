function Install-Choco {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

function Install-Everything {
    param (
        [string]$Title = ""
    )
    Write-Host "Installing all required Packages..."
    # choco install .\configs\packages.config

    Write-Host "Extensions installed sucessfully..."
}

Install-Choco
Install-Everything