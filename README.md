# Dotfiles

Minimal, suckless-inspired dotfiles for macOS.

## Structure

```
dotfiles/
├── README.md
├── install.sh
├── Brewfile
├── git/
│   ├── gitconfig
│   ├── gitignore_global
│   └── tigrc
├── shell/
│   ├── zshrc
│   ├── aliases.zsh
│   └── exports.zsh
├── tools/
│   ├── lazygit.yml
│   └── tmux.conf
└── bin/
    └── git-clean-merged
```

## Bootstrap

```bash
git clone https://github.com/you/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Daily Workflow

| Command | Tool |
|---------|------|
| `lg` | lazygit (commit & stage) |
| `tg` | tig (history browser) |
| `gl` | git log graph |
| `gs` | git status |

## Philosophy

- Simple over feature-rich
- CLI over GUI
- Edit config, don't hide it
