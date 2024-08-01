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
sudo apt install screenfetch curl git zsh neofetch snapd flatpak gnome-boxes tilix &&
sudo apt install gnome-software &&
echo "Configurando flatpak" &&
sudo apt install gnome-software-plugin-flatpak &&
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo &&
sudo flatpak install bitwarden ;
sudo snap install code --classic ;
sudo snap install fragments postman bitwarden ;
echo "Configurando git" &&
git config --global init.defaultBranch main &&
git config --global user.name "Raul" &&
git config --global user.email "raul.ruiz.bolivar@gmail.com" &&
echo "Instalando nvm" &&
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash &&
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.bashrc ;
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc ;
cd &&
source ~/.bashrc ;
echo "Instalando node version LTS" &&
nvm install node ;
echo "node version:" &&
node --version ;
echo "npm version:" &&
npm --version ;
echo "Instalando angular cli" &&
npm install -g @angular/cli ;
echo "Instalando ohmyzsh" &&
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
echo "Terminado" &&
sudo shutdown now -r

