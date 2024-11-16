
## 📤 Dependencies Installation

```sh
sudo pacman -Syu
sudo pacman -S --needed git base-devel
cd /tmp

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd
rm -rf /tmp/yay
yay --version
```

### 📦 Base Packages

#### System

```sh
yay -Sy hyprland hyprlock hypridle xdg-desktop-portal-hyprland hyprpicker swww rofi-wayland swaync wl-clipboard cliphist swayosd-git udiskie polkit-gnome playerctl pyprland grim slurp
```

#### CLI/TUI

```sh
yay -Sy fastfetch fzf jq eza fd vivid fish starship ripgrep bat yazi
```

#### GUI Apps

```sh
yay -Sy pavucontrol nautilus mpv
```

### 🪟 Graphics Drivers

```sh
# AMD (Open Source)
yay -Sy xf86-video-amdgpu xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon vulkan-tools opencl-clover-mesa lib32-opencl-clover-mesa libva-mesa-driver lib32-libva-mesa-driver mesa lib32-mesa mesa-vdpau lib32-mesa-vdpau vdpauinfo clinfo
```

```sh
# Nvidia (Propietary)
yay -Sy nvidia nvidia-utils nvidia-settings opencl-nvidia lib32-nvidia-utils lib32-opencl-nvidia cuda vdpauinfo clinfo
```

```sh
# Intel (Open Source)
yay -Sy xf86-video-intel vulkan-intel lib32-vulkan-intel vulkan-tools libva-intel-driver lib32-libva-intel-driver mesa lib32-mesa mesa-vdpau lib32-mesa-vdpau
```

### 🔊 Audio Service

```sh
yay -Sy pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber alsa-utils
```

Enable pipewire & wireplumber systemd services:

```sh
systemctl --user enable --now pipewire wireplumber
```

### 🎨 Color Theme

```sh
yay -Sy catppuccin-gtk-theme-macchiato catppuccin-cursors-macchiato qt5ct qt5-wayland qt6-wayland kvantum kvantum-qt5 nwg-look
```

### 📸 Icon Theme

```sh
curl -LJO https://github.com/ljmill/catppuccin-icons/releases/download/v0.2.0/Catppuccin-SE.tar.bz2
```

Extract the compressed package.

```sh
tar -xf Catppuccin-SE.tar.bz2
```

mv extracted files ~/.local/share/icons directory.

```sh
mv Catppuccin-SE ~/.local/share/icons/
```

### 🗛 Fonts

Install fonts:

```sh
yay -Sy ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-nerd-fonts-symbols-common ttf-font-awesome
```

Refresh the font cache:

```sh
fc-cache -fv
```

## 💾 Dotfiles Installation

Clone repo.

```sh
git clone https://github.com/Matt-FTW/dotfiles.git
cd dotfiles
```

Copy configs.

```sh
cp -r .config/* ~/.config/
cp -r .local/bin/* ~/.local/bin/
```

### Keyring Support

```sh
yay -Sy gnome-keyring libsecret
```

### Bluetooth

bluez & overskride:

```sh
yay -Sy bluez overskride
```

```sh
systemctl --user enable --now bluetooth.service
```

### Wi-Fi

```sh
yay -Sy iwgtk
```

Enable iwd service:

```sh
sudo systemctl enable --now iwd.service
```

