function Tools {
    param (
        [string]$Title = ""
    )
    Write-Host "Installing Developer Tools..."
    choco install .\configs\developer.config

    Write-Host "Developer Tools installed sucessfully..."
}

Tools