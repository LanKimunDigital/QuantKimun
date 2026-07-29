<#
    QuantKimun Engineering Toolkit
    Bootstrap Tool
    Version: 1.0.0
    Copyright (c) 2026 Lankimun Digital
#>

Clear-Host

Write-Host ""
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host " QuantKimun Engineering Toolkit" -ForegroundColor Cyan
Write-Host " Bootstrap v1.0.0" -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan
Write-Host ""

$configFile = Join-Path $PSScriptRoot "config\projects.psd1"

if (-not (Test-Path $configFile))
{
    Write-Host "Configuration file not found." -ForegroundColor Red
    exit 1
}

$config = Import-PowerShellDataFile $configFile

Write-Host "Projects defined:" -ForegroundColor Yellow
Write-Host ""

foreach ($project in $config.Projects)
{
    Write-Host (" - {0}" -f $project.Name)
}

Write-Host ""
Write-Host "Bootstrap finished." -ForegroundColor Green