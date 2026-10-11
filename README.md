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

### Fedora - Niri (Noctalia)

See [fedora-setup.md](fedora-setup.md).

---

## Usage

```bash
git clone https://github.com/hemanth-92/dotfiles.git
```

### Method 1

Clone into a separate folder and symlink:

```bash
ln -sfn ~/dotfiles/mango ~/.config/mango
```

### Method 2

Clone directly into `.config`:

```bash
git clone https://github.com/hemanth-92/dotfiles.git ~/.config
```
