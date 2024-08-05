echo "Actualizando los repositorios..." &&
sudo apt update &&
echo "Actualizando..." &&
sudo apt upgrade -y &&
echo "Borrando Juegos" &&
sudo apt purge gnome-2048 gnome-chess gnome-games gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-robots gnome-sudoku gnome-sushi gnome-taquin gnome-tetravex ;
echo "Desinstalando Libreoffice" &&
sudo apt remove --purge libreoffice* &&
sudo apt clean &&
sudo apt autoclean &&
sudo apt autoremove -y &&
echo "Instalando paquetes..." &&
sudo apt install screenfetch curl git zsh neofetch flatpak gnome-boxes tilix &&
sudo apt install gnome-software &&
echo "Configurando flatpak" &&
sudo apt install gnome-software-plugin-flatpak &&
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo &&
echo "Configurando git" &&
git config --global init.defaultBranch main &&
git config --global user.name "Raul" &&
git config --global user.email "raul.ruiz.bolivar@gmail.com" &&
echo "Instalando nvm" &&
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash &&
echo "Reinicia el sistema"
shutdown -r now;
