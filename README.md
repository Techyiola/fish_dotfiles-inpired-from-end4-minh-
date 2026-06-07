My personal [fish shell](https://fishshell.com/) config, inspired by and credited to **[end4](https://github.com/end4)** — the main guy behind the style and setup.

## What's included

| File | Description |
|------|-------------|
| `config.fish` | Main fish config — aliases, prompt, starship init |
| `fish_variables` | Universal variables set by fish |
| `auto-Hypr.fish` | Hyprland auto-start and environment setup |

## Starship prompt snippet (from config.fish)

The config uses [Starship](https://starship.rs/) with transience enabled:

```fish
if test "$TERM" != "linux"
    starship init fish | source
    enable_transience
end
```

## Requirements

- [fish shell](https://fishshell.com/) installed
- [Starship prompt](https://starship.rs/) installed
- [Hyprland](https://hyprland.org/) (for `auto-Hypr.fish`)

## Install

```bash
git clone https://github.com/Techyiola/fish_dotfiles-inpired-from-end4-minh-.git
cd fish_dotfiles-inpired-from-end4-minh-
chmod +x install.sh
./install.sh
```

That's it. No GitHub account needed, no tokens, nothing.

## Credits

- **[end4](https://github.com/end4)** — original inspiration and config style
