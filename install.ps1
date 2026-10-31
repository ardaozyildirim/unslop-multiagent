$ErrorActionPreference = "Stop"

$source = Join-Path $PSScriptRoot "skills\unslop-portable"
if (-not (Test-Path $source)) { throw "skills\unslop-portable not found next to this script." }

$canonical = Join-Path $HOME ".agents\skills\unslop-portable"
$linkTargets = @(
  (Join-Path $HOME ".claude\skills\unslop-portable"),
  (Join-Path $HOME ".codex\skills\unslop-portable"),
  (Join-Path $HOME ".config\opencode\skills\unslop-portable")
)
$copyTargets = @(
  (Join-Path $HOME ".gemini\config\skills\unslop-portable"),
  (Join-Path $HOME ".gemini\antigravity-cli\skills\unslop-portable")
)

if (Test-Path $canonical) {
  Write-Host "Skill already installed at $canonical (leaving it as is)."
} else {
  New-Item -ItemType Directory -Force -Path (Split-Path $canonical) | Out-Null
  Copy-Item -Path $source -Destination $canonical -Recurse
  Write-Host "Copied skill to $canonical"
}

foreach ($target in $linkTargets) {
  New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null
  if (Test-Path $target) {
    Write-Host "Exists, skipped: $target"
    continue
  }
  New-Item -ItemType Junction -Path $target -Target $canonical | Out-Null
  Write-Host "Linked $target -> $canonical"
}

foreach ($target in $copyTargets) {
  New-Item -ItemType Directory -Force -Path (Split-Path $target) | Out-Null
  if (Test-Path $target) {
    Write-Host "Exists, skipped: $target"
    continue
  }
  Copy-Item -Path $canonical -Destination $target -Recurse
  Write-Host "Copied $target (Antigravity does not follow junctions)"
}
