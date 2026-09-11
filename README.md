# Dotfiles

This repository uses [mise](https://mise.jdx.dev/) to install packages and
link configuration files into the home directory.

## Bootstrap a machine

Install mise, clone this repository, then run:

```sh
cd path/to/dotfiles
cp mise.example.toml mise.local.toml
# Edit mise.local.toml with the Git identity for this machine.
mise trust
mise bootstrap --dry-run --force-dotfiles
mise bootstrap --force-dotfiles
```

`--force-dotfiles` is needed for the first migration from Dotter because the
existing targets are regular files. Later runs can use `mise bootstrap`.

Existing Homebrew-owned casks need a one-time ownership cutover. If the dry
run reports `Homebrew owns this cask`, uninstall only the named cask with
`brew uninstall --cask <name>`, then rerun the dry-run and bootstrap. Replacing
an app bundle may require granting its macOS Privacy & Security permissions
again.

Todoist is intentionally managed through the Mac App Store entry already used
by mise on this machine. Remove a previous Homebrew install with
`brew uninstall --cask todoist-app` before the first bootstrap.

To inspect only one part of the setup:

```sh
mise bootstrap packages status
mise bootstrap dotfiles status
mise bootstrap dotfiles apply --dry-run --verbose
```

Package declarations and dotfile mappings live in `mise.toml`. Edit the source
files in this repository; mise links them into the home directory. Git config
is rendered from `gitconfig` with identity values from the ignored
`mise.local.toml`.
