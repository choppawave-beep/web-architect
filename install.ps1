# Web Architect — installer for Claude Code (Windows PowerShell)
# Copies skills, agents, and commands to ~/.claude/

$ErrorActionPreference = "Stop"

$ClaudeDir = if ($env:CLAUDE_DIR) { $env:CLAUDE_DIR } else { "$env:USERPROFILE\.claude" }
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "Installing Web Architect to $ClaudeDir ..." -ForegroundColor Cyan

# Create directories
New-Item -ItemType Directory -Force -Path "$ClaudeDir\skills\web-architect\references" | Out-Null
New-Item -ItemType Directory -Force -Path "$ClaudeDir\agents" | Out-Null
New-Item -ItemType Directory -Force -Path "$ClaudeDir\commands\wa" | Out-Null

# Copy files
Copy-Item "$ScriptDir\skills\web-architect\SKILL.md" "$ClaudeDir\skills\web-architect\" -Force
Copy-Item "$ScriptDir\skills\web-architect\references\*.md" "$ClaudeDir\skills\web-architect\references\" -Force
Copy-Item "$ScriptDir\agents\wa-*.md" "$ClaudeDir\agents\" -Force
Copy-Item "$ScriptDir\commands\wa\*.md" "$ClaudeDir\commands\wa\" -Force

Write-Host ""
Write-Host "Installed 12 files:" -ForegroundColor Green
@(
    "skills/web-architect/SKILL.md",
    "skills/web-architect/references/constrained-generation.md",
    "skills/web-architect/references/project-profiles.md",
    "skills/web-architect/references/quality-standards.md",
    "agents/wa-designer.md",
    "agents/wa-architect.md",
    "agents/wa-builder.md",
    "agents/wa-reviewer.md",
    "commands/wa/design.md",
    "commands/wa/build.md",
    "commands/wa/review.md",
    "commands/wa/profile.md"
) | ForEach-Object { Write-Host "  $_" }

# Append to CLAUDE.md if not already present
$ClaudeMd = "$ClaudeDir\CLAUDE.md"
if (Test-Path $ClaudeMd) {
    $content = Get-Content $ClaudeMd -Raw
    if ($content -notmatch "## Web Architect") {
        $snippet = Get-Content "$ScriptDir\claude-md-snippet.md" -Raw
        Add-Content $ClaudeMd $snippet
        Write-Host "`nAppended Web Architect section to CLAUDE.md" -ForegroundColor Green
    } else {
        Write-Host "`nWeb Architect section already exists in CLAUDE.md - skipped" -ForegroundColor Yellow
    }
} else {
    Write-Host "`nNo ~/.claude/CLAUDE.md found - copy claude-md-snippet.md contents manually" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Done! Start a new Claude Code session and try:" -ForegroundColor Cyan
Write-Host "  /wa:profile landing"
Write-Host "  /wa:design homepage hero section"
