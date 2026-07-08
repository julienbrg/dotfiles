# dotfiles

Personal scripts and configs, symlinked into place.

## Install

```
./install.sh
```

Symlinks each file into its target location, backing up anything already there as `.bak`. Safe to re-run.

## Contents

- `bin/share` — publish a file to Fileverse dDocs
- `claude/commands/share.md` — Claude Code slash command for `share`

## Fileverse

To publish a markdown file as an encrypted, shareable dDoc from the terminal or from
Claude Code.

### Setup

`share` needs a Fileverse API key at `~/.fileverse/.env` (`API_KEY=...`). This file is
not part of this repo — it's a secret and isn't managed by `install.sh`.

On a new machine, run `fileverse-api` once to generate it, then `share` will start
the local server automatically as needed.

### Use

```
share <filepath>
```

Or, from Claude Code:

```
/share <filepath>
```

Full walkthrough: [Publish encrypted, shareable docs from your terminal or Claude Code with Fileverse](https://dev.to/julienbrg/publish-encrypted-shareable-docs-from-your-terminal-or-claude-code-with-fileverse-h3h)

## Contact

**Julien Béranger** ([GitHub](https://github.com/julienbrg))

- Element: [@julienbrg:matrix.org](https://matrix.to/#/@julienbrg:matrix.org)
- Farcaster: [julien-](https://warpcast.com/julien-)
- Telegram: [@julienbrg](https://t.me/julienbrg)