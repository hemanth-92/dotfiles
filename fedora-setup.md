# Fedora - Niri (Noctalia)

## Install

### 1. Enable COPR repos

```bash
sudo dnf copr enable g3tchoo/prismlauncher
sudo dnf copr enable imput/helium
sudo dnf copr enable lionheartp/Hyprland
sudo dnf copr enable peterwu/rendezvous
sudo dnf copr enable scottames/ghostty
sudo dnf copr enable yalter/niri
```

### 2. Install packages

```bash
sudo dnf install niri noctalia noctalia-greeter ghostty neovim helium-bin prismlauncher firefox adw-gtk3 nwg-look nautilus btop eza zoxide discord foliate zed
```

### 3. Umbriel (Terra repo)

```bash
sudo dnf install dnf-plugins-core
sudo dnf config-manager addrepo --from-repofile=https://terra.fyralabs.com/terra.repo
sudo dnf install umbriel-nightly
```

## Troubleshoot

1. Wi-Fi not detected → Intel Wi-Fi hardware was detected but the required firmware was missing → Installed `iwlwifi-dvm-firmware` and `iwlwifi-mvm-firmware` with `sudo dnf install iwlwifi-dvm-firmware iwlwifi-mvm-firmware` → Wi-Fi started working.

2. Audio not working → Intel 500 Series HD Audio was using the wrong DSP driver → Added `options snd-intel-dspcfg dsp_driver=1` to `/etc/modprobe.d/intel-audio.conf`, rebooted, and audio started working.

3. Greeter not working → `greetd` and Noctalia Greeter were not correctly integrated into the graphical login flow → Checked `systemctl`, `journalctl`, `/etc/greetd/`, and the `graphical.target` dependency → fixed the greetd/Noctalia Greeter configuration.

## Setups

1. setup gtk/qt - https://docs.noctalia.dev/v5/templates/official/gtk-qt/
2. Install vscode/antigravity/cursor as per docs
3. https://kskroyal.com/things-to-do-after-installing-fedora-44/
4. obsidian - flatpak
5. https://techhut.tv/fedora-44-post-install-guide
6. curl -fsSL https://christitus.com/linux | sh
7. wallpaper repos
   - Catppuccin Mocha - https://github.com/orangci/walls-catppuccin-mocha
   - Kanagawa - https://github.com/Gurjaka/Kanagawa-Wallpapers (archived; active on https://codeberg.org/juna-lab/Kanagawa-Wallpapers)
   - Nord - https://github.com/linuxdotexe/nordic-wallpapers
8. Symlink - Niri,ghostty,helix
