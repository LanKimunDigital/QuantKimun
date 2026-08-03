function Add-ProjectsToSolution {
    param (
        [Parameter(Mandatory = $true)]
        [array]$Projects,

        [Parameter(Mandatory = $true)]
        [string]$SolutionPath
    )

    Write-Host ""
    Write-Host "[INFO] Adding projects to solution..." -ForegroundColor Yellow
    Write-Host ""

    foreach ($project in $Projects) {

        if (-not $project.Enabled) {
            continue
        }

        $projectPath = Join-Path $PSScriptRoot "..\..\..\..\$($project.Path)"
        $projectFile = Join-Path $projectPath "$($project.Name).csproj"

        if (-not (Test-Path $projectFile)) {
            Write-Host "[FAIL] Project file not found: $($project.Name)" -ForegroundColor Red
            throw "Project file not found: $projectFile"
        }

        Write-Host "[INFO] Adding $($project.Name)..." -ForegroundColor Cyan

        dotnet sln $SolutionPath add $projectFile --in-root

        if ($LASTEXITCODE -ne 0) {
            Write-Host "[FAIL] $($project.Name)" -ForegroundColor Red
            throw "Failed to add project to solution: $($project.Name)"
        }

        Write-Host "[ OK ] $($project.Name) added to solution" -ForegroundColor Green
    }

    Write-Host ""
}