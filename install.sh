#!/usr/bin/env bash
set -e

DOTFILES="$HOME/dotfiles"

# Prompt for git config
echo "👤 Git setup"
read -p "  Your name: " GIT_NAME
read -p "  Your email: " GIT_EMAIL

echo ""
echo "🔗 Linking dotfiles..."

# Create gitconfig with user info
cat > ~/.gitconfig << EOF
[user]
    name = $GIT_NAME
    email = $GIT_EMAIL

[include]
    path = $DOTFILES/git/gitconfig
EOF

ln -sf "$DOTFILES/git/gitignore_global" ~/.gitignore_global
ln -sf "$DOTFILES/git/tigrc" ~/.tigrc

ln -sf "$DOTFILES/shell/zshrc" ~/.zshrc

echo "🍺 Installing Homebrew packages..."
brew bundle --file="$DOTFILES/Brewfile"

echo "✅ Done. Restart terminal."
