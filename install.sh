#!/usr/bin/env bash
set -euo pipefail

SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills/unslop-portable"
CANONICAL="$HOME/.agents/skills/unslop-portable"
TARGETS=(
  "$HOME/.claude/skills/unslop-portable"
  "$HOME/.codex/skills/unslop-portable"
  "$HOME/.config/opencode/skills/unslop-portable"
)
COPY_TARGETS=(
  "$HOME/.gemini/config/skills/unslop-portable"
  "$HOME/.gemini/antigravity-cli/skills/unslop-portable"
)

if [ ! -d "$SOURCE" ]; then
  echo "skills/unslop-portable not found next to this script."
  exit 1
fi

if [ -e "$CANONICAL" ]; then
  echo "Skill already installed at $CANONICAL (leaving it as is)."
else
  mkdir -p "$(dirname "$CANONICAL")"
  cp -R "$SOURCE" "$CANONICAL"
  echo "Copied skill to $CANONICAL"
fi

for target in "${TARGETS[@]}"; do
  mkdir -p "$(dirname "$target")"
  if [ -e "$target" ] || [ -L "$target" ]; then
    echo "Exists, skipped: $target"
    continue
  fi
  ln -s "$CANONICAL" "$target"
  echo "Linked $target -> $CANONICAL"
done

for target in "${COPY_TARGETS[@]}"; do
  mkdir -p "$(dirname "$target")"
  if [ -e "$target" ] || [ -L "$target" ]; then
    echo "Exists, skipped: $target"
    continue
  fi
  cp -R "$CANONICAL" "$target"
  echo "Copied $target (Antigravity does not follow symlinks)"
done
