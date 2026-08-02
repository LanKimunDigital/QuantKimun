function Initialize-Folders {
    param (
        [Parameter(Mandatory = $true)]
        [array]$Projects
    )

    Write-Host ""
    Write-Host "[INFO] Initializing project folders..." -ForegroundColor Yellow
    Write-Host ""

    foreach ($project in $Projects) {

        $projectPath = Join-Path $PSScriptRoot "..\..\..\..\$($project.Path)"

        if (-not (Test-Path $projectPath)) {
            New-Item -ItemType Directory -Path $projectPath -Force | Out-Null

            Write-Host "[ OK ] $($project.Name) -> $($project.Path)" -ForegroundColor Green
        }
        else {
            Write-Host "[SKIP] $($project.Name) -> $($project.Path) already exists" -ForegroundColor DarkGray
        }
    }

    Write-Host ""
}