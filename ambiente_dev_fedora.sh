#!/bin/bash

# Instalar o RPM Fusion Free e NonFree
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Instalar o Ajustes do GNOME para fazer basicammente tudo esde aplicar temas, a mudar fontes, e minimizar
sudo dnf install gnome-tweaks -y

# Instalar as fontes da Microsoft para usuarios de escritorio ou que necessitam
sudo dnf install https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm -y

# Instalar ferramentas para jogadores
sudo dnf install steam -y
flatpak install flathub com.vysp3r.ProtonPlus
flatpak install flathub com.usebottles.bottles
flatpak install flathub com.heroicgameslauncher.hgl

# Instalar aplicativos essenciais em flatpak
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.spotify.Client
flatpak install flathub com.obsproject.Studio
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub de.haeckerfelix.Fragments

# Instalar o VSCode para desenvolvedores
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
# Instalar o Podman e o Toolbox para rodar containers
sudo dnf install podman
sudo dnf install toolbox

# Instalar o Docker e os plugins do dnf caso não tenha
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager addrepo --from-repofile="https://download.docker.com/linux/fedora/docker-ce.repo"
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker

# Teste de Docker
sudo docker run hello-world

# Iniciar o Daemon do Docker no Boot
sudo systemctl enable docker

# Instalar o Pop Shell e Dash to Dock e Blur my Shell e AppIndicators para Tiling WM e funções basicas
sudo dnf install gnome-shell-extension-appindicator
sudo dnf install gnome-shell-extension-pop-shell
sudo dnf install gnome-shell-extension-dash-to-dock
sudo dnf install gnome-shell-extension-blur-my-shell

