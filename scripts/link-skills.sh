#!/usr/bin/env bash
set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${CODEX_HOME:-$HOME/.codex}/skills"

mkdir -p "$DEST"

find "$REPO/skills" -name SKILL.md -not -path '*/node_modules/*' -print0 |
while IFS= read -r -d '' skill_md; do
  src="$(dirname "$skill_md")"
  name="$(basename "$src")"
  target="$DEST/$name"

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    echo "error: $target exists and is not a symlink." >&2
    exit 1
  fi

  ln -sfn "$src" "$target"
  echo "linked $name -> $src"
done
