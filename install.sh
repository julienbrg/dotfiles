#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# repo path -> target path
LINKS=(
  "bin/pub:$HOME/.local/bin/pub"
  "claude/commands/pub.md:$HOME/.claude/commands/pub.md"
)

for entry in "${LINKS[@]}"; do
  src="$DOTFILES/${entry%%:*}"
  dest="${entry##*:}"

  if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$src" ]; then
    echo "ok      $dest"
    continue
  fi

  mkdir -p "$(dirname "$dest")"

  if [ -e "$dest" ]; then
    mv "$dest" "$dest.bak"
    echo "backed up existing $dest -> $dest.bak"
  fi

  ln -s "$src" "$dest"
  echo "linked  $dest -> $src"
done
