function Node {
    param (
        [string]$Title = ""
    )
    Write-Host "Installing Yarn..."
    choco install nvm

    Write-Host "Installing NVM..."
    choco install nvm

    Write-Host "Node tools installed sucessfully..."
}

function Configure {
    param (
        [string]
        $version = "lts"
    )
    Write-Host "Installing Node $version..."
    nvm install --$version
    nvm use --$version
}

Node
Configure