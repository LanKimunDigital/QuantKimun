Write-Host "============================================="
Write-Host " QuantKimun Engineering Validation"
Write-Host " QK-0204"
Write-Host "============================================="
Write-Host ""

$validationRoot = $PSScriptRoot

$validators = @(
    "ValidateArchitecture.ps1"
)

$failed = $false

foreach ($validator in $validators) {

    $validatorPath = Join-Path $validationRoot $validator

    if (-not (Test-Path $validatorPath)) {

        Write-Host "[ERROR] Validator not found:" `
            $validatorPath `
            -ForegroundColor Red

        $failed = $true
        continue
    }

    Write-Host "[INFO] Running $validator..."

    & $validatorPath

    if ($LASTEXITCODE -ne 0) {

        Write-Host "[FAIL] $validator" `
            -ForegroundColor Red

        $failed = $true
        break
    }

    Write-Host "[ OK ] $validator" `
        -ForegroundColor Green

    Write-Host ""
}

Write-Host "============================================="

if ($failed) {

    Write-Host " ENGINEERING VALIDATION FAILED" `
        -ForegroundColor Red

    Write-Host "============================================="

    exit 1
}

Write-Host " ENGINEERING VALIDATION PASSED" `
    -ForegroundColor Green

Write-Host "============================================="

exit 0