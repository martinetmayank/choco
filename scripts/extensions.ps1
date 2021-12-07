Clear-Host

# TODO:
# 1. Check if VSCode is installed or not

function Show-Extensions {
    param (
        [string]$Title = "Extensions"
    )
    Write-Host ""
    Write-Host "The following extensions will be installed.."
    Write-Host ""

    Write-Host "    |   Python                |"
    Write-Host "    |   Pylance               |"
    Write-Host "    |   Intellicode           |"
    Write-Host "    |   Jupyter               |"
    Write-Host "    |   Beautify              |"
    Write-Host "    |   One-Dark-Pro Theme    |"
    Write-Host "    |   VS Liveshare          |"
    Write-Host ""
}

function Install-Extension {
    param (
        [string]$Title = ""
    )
    Write-Host "Installing Extensions..."
    # choco install .\configs\extensions.config

    Write-Host "Extensions installed sucessfully..."
}

Show-Extensions

$selection = Read-Host -Prompt "[Y] Yes [N] No (Default: Y)"

switch ($selection) {
    'Y' { Install-Extension }
    'yes' { Install-Extension }
    'N' {
        Write-Host "Skipping installation..."
        return
    }
    'no' {
        Write-Host "Skipping installation..."
        return
    }
    Default {
        Install-Extension
    }
}
