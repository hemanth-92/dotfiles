# dotfiles

## Dependencies

### Arch - Mangowc

```bash
yay -S mangowc
```

```bash
yay -S rofi xdg-desktop-portal-wlr swaybg waybar wl-clip-persist cliphist wl-clipboard wlsunset polkit-gnome swaync pamixer wlr-dpms sway-audio-idle-inhibit-git swayidle dimland-git brightnessctl swayosd wlr-randr grim slurp satty swaylock-effects-git sox zoxide bibata-cursor-theme-bin fcitx5 ttf-jetbrains-mono-nerd blueman network-manager-applet sddm-silent-theme waypaper unrar
```

---

### Fedora - Umbriel/Niri (Noctalia)

See [fedora-setup.md](fedora-setup.md).

---

## Usage

Clone the repo and symlink the configs you want:

```bash
git clone https://github.com/hemanth-92/dotfiles.git ~/dotfiles

# Fedora - Niri / Umbriel (Noctalia)
for d in niri umbriel noctalia ghostty helix nvim; do
    ln -sfn ~/dotfiles/$d ~/.config/$d
done
ln -sfn ~/dotfiles/.bashrc ~/.bashrc
mkdir -p ~/.local/state/noctalia ~/.config/vesktop/themes
ln -sfn ~/dotfiles/noctalia/settings.toml ~/.local/state/noctalia/settings.toml
ln -sfn ~/dotfiles/vesktop/themes/*.theme.css ~/.config/vesktop/themes/

# Arch - Mangowc
for d in mango waybar rofi swaync swayosd swaylock; do
    ln -sfn ~/dotfiles/$d ~/.config/$d
done
```

Back up any existing configs first — `ln -sfn` does not replace a real
directory, it creates the link inside it.
