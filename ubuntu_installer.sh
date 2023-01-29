echo -e "\033[1;35m ---------- INICIANDO INSTALAÇÃO DE SOFTWARES DO GAMSO ----------"

# dependencias para flatpak
# referência: https://flatpak.org/setup/Ubuntu
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# instalando game engines
# adicionando unity hub a lista de repositorios apt
sudo sh -c 'echo "deb https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'
wget -qO - https://hub.unity3d.com/linux/keys/public | sudo apt-key add -
sudo apt update
sudo apt-get install unityhub -y

sudo apt upgrade

sudo apt install godot3 -y

# instalando softwares de manipulação de imagens
sudo apt install gimp krita inkscape -y
sudo flatpak install flathub com.github.libresprite.LibreSprite

# instalando softwares de modelagem 3D
sudo apt install blender

wget https://github.com/huxingyi/dust3d/releases/download/1.0.0-rc.6/dust3d-1.0.0-rc.6.AppImage
sudo apt $ chmod a+x ./dust3d-1.0.0-rc.6.AppImage
./dust3d-1.0.0-rc.6.AppImage

# instalando steam
sudo apt install steam
