function New-Projects {
    param (
        [Parameter(Mandatory = $true)]
        [array]$Projects
    )

    Write-Host ""
    Write-Host "[INFO] Creating .NET projects..." -ForegroundColor Yellow
    Write-Host ""

    foreach ($project in $Projects) {
 
        if (-not $project.Enabled) {
            continue
        }
        
        $projectPath = Join-Path $PSScriptRoot "..\..\..\..\$($project.Path)"
        $projectFile = Join-Path $projectPath "$($project.Name).csproj"

        if (Test-Path $projectFile) {
            Write-Host "[SKIP] $($project.Name) already exists" -ForegroundColor DarkGray
            continue
        }

        Write-Host "[INFO] Creating $($project.Name)..." -ForegroundColor Cyan

        dotnet new $project.Type `
            --name $project.Name `
            --output $projectPath `
            --no-restore

        if ($LASTEXITCODE -ne 0) {
            Write-Host "[FAIL] $($project.Name)" -ForegroundColor Red
            throw "Failed to create project: $($project.Name)"
        }

        Write-Host "[ OK ] $($project.Name) -> $($project.Path)" -ForegroundColor Green
    }

    Write-Host ""
}