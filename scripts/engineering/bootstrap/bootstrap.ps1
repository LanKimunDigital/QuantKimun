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

# --------------------------------------------------
# Configuration
# --------------------------------------------------

$configFile = Join-Path $PSScriptRoot "config\projects.psd1"

if (-not (Test-Path $configFile))
{
    Write-Host "Configuration file not found." -ForegroundColor Red
    exit 1
}

$config = Import-PowerShellDataFile $configFile

# --------------------------------------------------
# Load Initialize-Folders function
# --------------------------------------------------

$initializeFoldersFunction = Join-Path $PSScriptRoot "functions\InitializeFolders.ps1"

if (-not (Test-Path $initializeFoldersFunction))
{
    Write-Host "InitializeFolders function not found." -ForegroundColor Red
    exit 1
}

. $initializeFoldersFunction

# --------------------------------------------------
# Load Create-Projects function
# --------------------------------------------------

$createProjectsFunction = Join-Path $PSScriptRoot "functions\CreateProjects.ps1"

if (-not (Test-Path $createProjectsFunction))
{
    Write-Host "CreateProjects function not found." -ForegroundColor Red
    exit 1
}

# --------------------------------------------------
# Load Add-Projects-To-Solution function
# --------------------------------------------------

$addProjectsFunction = Join-Path $PSScriptRoot "functions\AddProjectsToSolution.ps1"

if (-not (Test-Path $addProjectsFunction))
{
    Write-Host "AddProjectsToSolution function not found." -ForegroundColor Red
    exit 1
}

. $addProjectsFunction

. $createProjectsFunction

# --------------------------------------------------
# Display projects
# --------------------------------------------------

Write-Host "Projects defined:" -ForegroundColor Yellow
Write-Host ""

foreach ($project in $config.Projects)
{
    Write-Host (" - {0}" -f $project.Name)
}

# --------------------------------------------------
# Initialize folders
# --------------------------------------------------

Initialize-Folders -Projects $config.Projects

# --------------------------------------------------
# Create projects
# --------------------------------------------------

New-Projects -Projects $config.Projects

# --------------------------------------------------
# Finish
# --------------------------------------------------

# --------------------------------------------------
# Add projects to solution
# --------------------------------------------------

$solutionPath = Join-Path $PSScriptRoot "..\..\..\QuantKimun.sln"

Add-ProjectsToSolution `
    -Projects $config.Projects `
    -SolutionPath $solutionPath
    
Write-Host ""
Write-Host "Bootstrap finished." -ForegroundColor Green