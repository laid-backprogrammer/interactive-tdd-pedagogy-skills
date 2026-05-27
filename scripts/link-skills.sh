#!/usr/bin/env bash
set -euo pipefail

# Links all packaged skills to an agent skills directory.

REPO="$(cd "$(dirname "$0")/.." && pwd)"
AGENT="${AGENT:-claude}"

case "$AGENT" in
  claude)
    DEFAULT_DEST="$HOME/.claude/skills"
    ;;
  codex)
    DEFAULT_DEST="${CODEX_HOME:-$HOME/.codex}/skills"
    ;;
  agents)
    DEFAULT_DEST="$HOME/.agents/skills"
    ;;
  custom)
    if [ -z "${SKILLS_DIR:-}" ]; then
      echo "error: SKILLS_DIR is required when AGENT=custom." >&2
      exit 1
    fi
    DEFAULT_DEST="$SKILLS_DIR"
    ;;
  *)
    echo "error: unknown AGENT '$AGENT'. Use claude, codex, agents, or custom." >&2
    exit 1
    ;;
esac

DEST="${SKILLS_DIR:-$DEFAULT_DEST}"

resolve_path() {
  if command -v realpath >/dev/null 2>&1; then
    realpath "$1"
  else
    readlink -f "$1"
  fi
}

# If the destination is a symlink that resolves into this repo, per-skill links
# would be written back into the repository. Detect that before linking.
if [ -L "$DEST" ]; then
  resolved="$(resolve_path "$DEST")"
  case "$resolved" in
    "$REPO"|"$REPO"/*)
      echo "error: $DEST is a symlink into this repo ($resolved)." >&2
      echo "Remove it and re-run; the script will recreate it as a real directory." >&2
      exit 1
      ;;
  esac
fi

mkdir -p "$DEST"

find "$REPO/skills" -name SKILL.md -not -path '*/node_modules/*' -not -path '*/deprecated/*' -print0 |
while IFS= read -r -d '' skill_md; do
  src="$(dirname "$skill_md")"
  name="$(basename "$src")"
  target="$DEST/$name"

  if [ -e "$target" ] && [ ! -L "$target" ]; then
    rm -rf "$target"
  fi

  ln -sfn "$src" "$target"
  echo "linked $name -> $src in $DEST"
done
