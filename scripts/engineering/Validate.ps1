Write-Host "============================================="
Write-Host " QuantKimun Engineering"
Write-Host " Validation Entry Point"
Write-Host " QK-0205"
Write-Host "============================================="
Write-Host ""

$validationScript = Join-Path `
    $PSScriptRoot `
    "validation\Validate.ps1"

if (-not (Test-Path $validationScript)) {

    Write-Host "[ERROR] Validation runner not found:" `
        $validationScript `
        -ForegroundColor Red

    exit 1
}

Write-Host "[INFO] Starting engineering validation..."
Write-Host ""

& $validationScript

if ($LASTEXITCODE -ne 0) {

    Write-Host ""
    Write-Host "ENGINEERING VALIDATION FAILED" `
        -ForegroundColor Red

    exit 1
}

Write-Host ""
Write-Host "ENGINEERING VALIDATION PASSED" `
    -ForegroundColor Green

exit 0