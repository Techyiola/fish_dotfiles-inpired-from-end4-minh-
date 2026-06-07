#!/usr/bin/env bash

DOTFILES="$(dirname "$(realpath "$0")")"
FISH_DIR="$HOME/.config/fish"
FILES=("config.fish" "fish_variables" "auto-Hypr.fish")

echo "Installing fish configs..."

mkdir -p "$FISH_DIR"

for f in "${FILES[@]}"; do
    cp "$DOTFILES/$f" "$FISH_DIR/$f" && echo "Copied $f"
done

echo "Done! Restart fish or run: source ~/.config/fish/config.fish"
