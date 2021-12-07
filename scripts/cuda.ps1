function CUDA {
    param (
        [string]$version = 11.2.2.46133
    )

    Write-Host "Installing CUDA..."
    choco install cuda --version=$version
    Write-Host "CUDA version $version installed sucessfully..."
}

CUDA