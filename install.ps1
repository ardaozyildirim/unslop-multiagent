$ErrorActionPreference = "Stop"

$source = Join-Path $PSScriptRoot "skills\unslop"
if (-not (Test-Path $source)) { throw "skills\unslop not found next to this script." }

$canonical = Join-Path $HOME ".agents\skills\unslop"
$targets = @(
  (Join-Path $HOME ".claude\skills\unslop"),
  (Join-Path $HOME ".codex\skills\unslop"),
  (Join-Path $HOME ".gemini\config\skills\unslop"),
  (Join-Path $HOME ".gemini\antigravity-cli\skills\unslop"),
  (Join-Path $HOME ".config\opencode\skills\unslop")
)

if (Test-Path $canonical) {
  Write-Host "Skill already installed at $canonical (leaving it as is)."
} else {
  New-Item -ItemType Directory -Force -Path (Split-Path $canonical) | Out-Null
  Copy-Item -Path $source -Destination $canonical -Recurse
  Write-Host "Copied skill to $canonical"
}

foreach ($target in $targets) {
  New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null
  if (Test-Path $target) {
    Write-Host "Exists, skipped: $target"
    continue
  }
  New-Item -ItemType Junction -Path $target -Target $canonical | Out-Null
  Write-Host "Linked $target -> $canonical"
}
