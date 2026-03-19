$ErrorActionPreference = "Stop"

$SkillName = "academic-notebook"
$SourceDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TargetDir = Join-Path $HOME ".claude/skills/$SkillName"

Write-Host "Installing skill '$SkillName'"
Write-Host "Source: $SourceDir"
Write-Host "Target: $TargetDir"

New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null

Copy-Item -Path (Join-Path $SourceDir "SKILL.md") -Destination (Join-Path $TargetDir "SKILL.md") -Force

foreach ($dir in @("agents", "assets", "references", "scripts")) {
    $src = Join-Path $SourceDir $dir
    if (Test-Path $src) {
        $dst = Join-Path $TargetDir $dir
        New-Item -ItemType Directory -Path $dst -Force | Out-Null
        Copy-Item -Path (Join-Path $src "*") -Destination $dst -Recurse -Force
    }
}

Write-Host "Skill installed successfully at $TargetDir"
