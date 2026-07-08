# dotfiles

Personal scripts and configs, symlinked into place.

## Install

```
./install.sh
```

Symlinks each file into its target location, backing up anything already there as `.bak`. Safe to re-run.

## Contents

- `bin/pub` — publish a file to Fileverse dDocs
- `claude/commands/pub.md` — Claude Code slash command for `pub`

## Fileverse

`pub` needs a Fileverse API key at `~/.fileverse/.env` (`API_KEY=...`). This file is
not part of this repo — it's a secret and isn't managed by `install.sh`.

On a new machine, run `fileverse-api` once to generate it, then `pub` will start
the local server automatically as needed.
