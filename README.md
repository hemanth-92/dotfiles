# dependence

```bash
yay -S mangowc
```

```bash
yay -S rofi xdg-desktop-portal-wlr swaybg waybar wl-clip-persist cliphist wl-clipboard wlsunset polkit-gnome swaync pamixer wlr-dpms sway-audio-idle-inhibit-git swayidle dimland-git brightnessctl swayosd wlr-randr grim slurp satty swaylock-effects-git sox  zoxide bibata-cursor-theme-bin fcitx5 ttf-jetbrains-mono-nerd blueman network-manager-applet sddm-silent-theme waypaper unrar```


# fedora setup

```bash
# SwayNotificationCenter (swaync)
sudo dnf copr enable erikreider/SwayNotificationCenter

# SwayOSD
sudo dnf copr enable erikreider/swayosd

# swaylock-effects
sudo dnf copr enable eddsalkield/swaylock-effects

# Ghostty terminal
sudo dnf copr enable scottames/ghostty

#  bibata-cursor
sudo dnf copr enable peterwu/rendezvous
```

# Enable Terra
```bash
sudo dnf install --nogpgcheck \
  --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' \
  terra-release
  ```

# Main dnf installs

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
  helium-browser-bin
  ```

# Usage

```bash
git clone https://github.com/dsig0/dotfiles.git
```
### Method 1

1.Clone into the seperate folder and symlink the folders

```bash
ln -s ~/dotfiles/mango ~/.config
```
### Method 2

1.Directly clone into the .config 

```bash
git clone https://github.com/dsig0/dotfiles.git ~/.config
```
