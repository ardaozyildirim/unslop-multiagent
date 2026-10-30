#!/usr/bin/env bash
set -euo pipefail

SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills/unslop"
CANONICAL="$HOME/.agents/skills/unslop"
TARGETS=(
  "$HOME/.claude/skills/unslop"
  "$HOME/.codex/skills/unslop"
  "$HOME/.gemini/config/skills/unslop"
  "$HOME/.config/opencode/skills/unslop"
)

if [ ! -d "$SOURCE" ]; then
  echo "skills/unslop not found next to this script."
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
