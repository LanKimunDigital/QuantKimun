Write-Host "============================================="
Write-Host " QuantKimun Architecture Validator"
Write-Host " QK-0203"
Write-Host "============================================="
Write-Host ""

$root = Resolve-Path (Join-Path $PSScriptRoot "..\..\..")
$rulesFile = Join-Path $PSScriptRoot "architecture-rules.psd1"

if (-not (Test-Path $rulesFile)) {
    Write-Host "[ERROR] Architecture rules file not found:" `
        $rulesFile `
        -ForegroundColor Red

    exit 1
}

$rules = Import-PowerShellDataFile $rulesFile
$allowedDependencies = $rules.AllowedDependencies

$projectFiles = Get-ChildItem `
    -Path (Join-Path $root "src") `
    -Filter *.csproj `
    -Recurse

Write-Host "[INFO] Projects found: $($projectFiles.Count)"
Write-Host ""

$violations = @()

foreach ($project in $projectFiles) {

    $projectName = $project.BaseName

    if (-not $allowedDependencies.ContainsKey($projectName)) {
        Write-Host "[ERROR] Project has no architecture rule:" `
            $projectName `
            -ForegroundColor Red

        $violations += "$projectName -> NO_RULE"
        continue
    }

    [xml]$xml = Get-Content $project.FullName

    $references = $xml.Project.ItemGroup.ProjectReference

    if ($null -eq $references) {
        continue
    }

    foreach ($reference in $references) {

        $referencePath = Join-Path `
            $project.DirectoryName `
            $reference.Include

        $targetProject = Get-Item `
            $referencePath `
            -ErrorAction SilentlyContinue

        if ($null -eq $targetProject) {

            Write-Host "[ERROR] Reference not found:" `
                "$projectName -> $($reference.Include)" `
                -ForegroundColor Red

            $violations += "$projectName -> INVALID_REFERENCE"
            continue
        }

        $targetProjectName = $targetProject.BaseName

        $allowedTargets = $allowedDependencies[$projectName]

        if ($allowedTargets -contains $targetProjectName) {

            Write-Host "[ OK ] $projectName -> $targetProjectName" `
                -ForegroundColor Green

        }
        else {

            Write-Host "[VIOLATION] $projectName -> $targetProjectName" `
                -ForegroundColor Red

            $violations += "$projectName -> $targetProjectName"
        }
    }
}

Write-Host ""
Write-Host "============================================="

if ($violations.Count -eq 0) {

    Write-Host " ARCHITECTURE VALIDATION PASSED" `
        -ForegroundColor Green

    Write-Host "============================================="

    exit 0
}

Write-Host " ARCHITECTURE VALIDATION FAILED" `
    -ForegroundColor Red

Write-Host ""
Write-Host "Violations:"
Write-Host ""

foreach ($violation in $violations) {
    Write-Host " - $violation" -ForegroundColor Red
}

Write-Host "============================================="

exit 1