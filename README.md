
### Pacman

## Install Packages
```sh
sudo pacman -S amd-ucode bluez docker docker-compose flatpak gtk-engine-murrine
```

### Uninstall Packages
```sh
sudo pacman -Rns gnome-weather gnome-contacts gnome-maps gnome-clocks simple-scan gnome-system-monitor gnome-text-editor gnome-connections snapshot totem gnome-music htop nano
```

### AUR Helper
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

### CLI/TUI
```sh
yay -S ani-cli atuin bat btop cbonsai curl duf eza fastfetch fd ffmpeg figlet fish fzf gcc github-cli git-delta jq lazydocker lazygit lazynpm llvm neovim nodejs npm nushell nvitop nvm openrgb powertop ripgrep starship speedtest-cli syncthing tldr tmux tty-clock unimatrix wl-clipboard yazi yt-dlp zoxide
```

### GUI
```sh
yay -S auto-cpufreq gnome-firmware mpv
```

### 🗛 Fonts
```sh
yay -S ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono ttf-nerd-fonts-symbols-common ttf-font-awesome noto-fonts-cjk
```

```sh
fc-cache -fv
```

### Bluetooth
```sh
sudo systemctl start bluetooth.service
```

```sh
sudo systemctl enable bluetooth.service
```

### Auto-CpuFetch
```sh
sudo systemctl mask power-profiles-daemon.service
```

```sh
systemctl enable --now auto-cpufreq
```

### tmux plugin manager
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Fish Plugin Manager
```sh
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

```sh
fisher install PatrickF1/fzf.fish
```

### Docker
```sh
sudo systemctl start docker.service
```

```sh
sudo systemctl enable docker.service
```

```sh
sudo usermod -aG docker $USER
```

```sh
newgrp docker
```

```sh
docker network create net
```

```sh
docker network create -d macvlan \
  --subnet=192.168.29.0/24 \
  --gateway=192.168.29.1 \
  -o parent=enp7s0 macvlan
```

### Flatpaks Installation
```sh
flatpak install -y com.raggesilver.BlackBox dev.zed.Zed com.mattjakeman.ExtensionManager org.gnome.gitlab.YaLTeR.Identity com.belmoussaoui.Decoder dev.geopjr.Archives com.github.huluti.Curtail io.gitlab.theevilskeleton.Upscaler com.belmoussaoui.Authenticator io.gitlab.adhami3310.Impression dev.geopjr.Collision io.github.flattool.Warehouse io.github.realmazharhussain.GdmSettings io.github.fizzyizzy05.binary dev.bragefuglseth.Keypunch io.github.tfuxu.Halftone org.gnome.World.PikaBackup io.github.fkinoshita.Telegraph com.github.ADBeveridge.Raider com.github.tchx84.Flatseal com.github.neithern.g4music io.missioncenter.MissionCenter com.github.tenderowl.frog io.github.zaedus.spider io.github.vikdevelop.SaveDesktop com.hunterwittenborn.Celeste org.nickvision.tubeconverter org.upscayl.Upscayl cafe.avery.Delfin com.usebottles.bottles com.ranfdev.Notify com.belmoussaoui.Obfuscate io.github.lainsce.Countdown io.github.celluloid_player.Celluloid org.mozilla.Thunderbird org.gnome.Papers org.gnome.World.Secrets net.codelogistics.webapps org.gnome.Fractal md.obsidian.Obsidian io.gitlab.adhami3310.Footage com.github.finefindus.eyedropper
```

### Theme

**https://github.com/Fausto-Korpsvart/Catppuccin-GTK-Theme**

Override flatpak themes to ~/.themes:
```sh
sudo flatpak override --filesystem=$HOME/.themes
```

Override flatpak icons to ~/.icons:
```sh
sudo flatpak override --filesystem=$HOME/.icons
```

Override flatpak themes to ~/.config/gtk-4.0 locally:
```sh
flatpak override --user --filesystem=xdg-config/gtk-4.0
```

Override flatpak themes to ~/.config/gtk-4.0 globally:
```sh
sudo flatpak override --filesystem=xdg-config/gtk-4.0
```

TLDR Update Cache
```sh
tldr-u
```

