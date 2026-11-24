# Waybar Dark Theme Config (Niri)

A dark, translucent Waybar configuration inspired by the reference screenshot. Designed for the Niri compositor.

## Files
- `config.jsonc` — Main configuration with modules matching the reference layout
- `style.css` — Dark theme styling with yellow accent for active workspaces
- `power-menu.sh` — Clickable power menu (shutdown, reboot, logout, suspend, hibernate)

## Modules Included
- **Left**: Niri workspaces (yellow pill style for active)
- **Center**: Custom location/title module ("Gooee — Marupe")
- **Right**: Idle inhibitor, temperature, CPU, memory, disk, battery (with detailed tooltip), clock, **power menu**

## Installation
1. Copy these files to `~/.config/waybar/`
2. Ensure you have a Nerd Font installed (e.g. JetBrainsMono Nerd Font)
3. Install fuzzel or rofi for the power menu (optional but recommended)
4. Restart Waybar: `pkill waybar; waybar`

## Customization
- Edit the center module text in `config.jsonc`
- Adjust colors in `style.css` (yellow accent `#f9e2af` is Catppuccin-inspired)
- Add/remove modules as needed

Requires Waybar with Niri support and Nerd Fonts for icons.
