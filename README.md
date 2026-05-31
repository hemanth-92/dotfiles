# dotfiles

## Dependencies

### Arch

```bash
yay -S mangowc
```

```bash
yay -S rofi xdg-desktop-portal-wlr swaybg waybar wl-clip-persist cliphist wl-clipboard wlsunset polkit-gnome swaync pamixer wlr-dpms sway-audio-idle-inhibit-git swayidle dimland-git brightnessctl swayosd wlr-randr grim slurp satty swaylock-effects-git sox zoxide bibata-cursor-theme-bin fcitx5 ttf-jetbrains-mono-nerd blueman network-manager-applet sddm-silent-theme waypaper unrar
```

---

### Fedora

#### 1. Enable COPR repos

```bash
sudo dnf copr enable erikreider/SwayNotificationCenter
sudo dnf copr enable erikreider/swayosd
sudo dnf copr enable eddsalkield/swaylock-effects
sudo dnf copr enable scottames/ghostty
sudo dnf copr enable peterwu/rendezvous
```

#### 2. Enable Terra repo

```bash
sudo dnf install --nogpgcheck \
  --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' \
  terra-release
```

#### 3. Install packages

```bash
sudo dnf install \
  niri \
  rofi \
  xdg-desktop-portal-wlr \
  swaybg \
  waybar \
  cliphist \
  wl-clipboard \
  wlsunset \
  polkit-gnome \
  SwayNotificationCenter \
  pamixer \
  swayidle \
  brightnessctl \
  swayosd \
  wlr-randr \
  grim \
  slurp \
  satty \
  swaylock-effects \
  sox \
  zoxide \
  blueman \
  network-manager-applet \
  ghostty \
  helix \
  neovim \
  zed \
  jetbrains-mono-fonts \
  fcitx5 \
  fcitx5-configtool \
  unrar \
  bibata-cursor-themes \
  eza \
  lazygit \
  helium-browser-bin
```

For native Wayland rendering on niri, add to your shell profile or niri environment:

```bash
export ELECTRON_OZONE_PLATFORM_HINT=auto
```

---

## Usage

```bash
git clone https://github.com/hemanth-92/dotfiles.git
```

### Method 1

Clone into a separate folder and symlink:

```bash
ln -s ~/dotfiles/mango ~/.config
```

### Method 2

Clone directly into `.config`:

```bash
git clone https://github.com/hemanth-92/dotfiles.git ~/.config
```
