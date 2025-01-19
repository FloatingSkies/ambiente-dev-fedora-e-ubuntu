#!/bin/bash

# Instalar o Ubuntu Restricted Extras
sudo apt install ubuntu-restricted-extras -y

# Instalar o VLC
sudo apt install vlc

# Instalar o Ajustes do GNOME para fazer basicammente tudo esde aplicar temas, a mudar fontes, e minimizar
sudo apt install gnome-tweaks -y

# Instalar ferramentas para jogadores
sudo apt install steam -y
#Caso falhe a Steam
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.vysp3r.ProtonPlus
flatpak install flathub com.usebottles.bottles
flatpak install flathub com.heroicgameslauncher.hgl

# Instalar aplicativos essenciais em flatpak
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.spotify.Client
flatpak install flathub com.obsproject.Studio
flatpak install flathub com.mattjakeman.ExtensionManager
flatpak install flathub com.github.tchx84.Flatseal

# Instalar o VSCodium
flatpak install flathub com.vscodium.codium

# Instalar o Podman
sudo apt install podman

# Adicionar a chave do Docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Adicionar o repositorio na lista do Apt
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# Instalar o Docker
 sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Teste do Docker
sudo docker run hello-world

# Instalar o Pop Shell (IRÁ REINICIAR/DESLIGAR A TELA APOS A INSTALAÇÃO, REINICIE O COMPUTADOR
sudo apt install git node-typescript make gnome-shell-extension-prefs
git clone https://github.com/pop-os/shell.git
cd shell
git checkout master_noble # para Ubuntu 24.04, 24.10, e futuras versões
make local-install
