#!/usr/bin/env bash

DOTFILES="$(dirname "$(realpath "$0")")"
FISH_DIR="$HOME/.config/fish"
FILES=("config.fish" "fish_variables" "auto-Hypr.fish")

# 1. Create fish config dir
mkdir -p "$FISH_DIR"
echo "Created $FISH_DIR"

# 2. Copy files
for f in "${FILES[@]}"; do
    cp "$DOTFILES/$f" "$FISH_DIR/$f" && echo "Copied $f"
done

# 3. Push to GitHub
cd "$DOTFILES"

if [ ! -d ".git" ]; then
    git init
    git branch -M main
    read -rp "GitHub remote URL: " url
    git remote add origin "$url"
fi

git add .
read -rp "Commit message: " msg
git commit -m "${msg:-update fish configs}"
git push

echo "Done!"
