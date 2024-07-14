mkdir $HOME/git_apps

# ImageMagick
sudo apt install -y  imagemagick

# SCRCPY
cd $HOME/git_apps
git clone https://github.com/Genymobile/scrcpy.git
cd scrcpy
git checkout v2.5-install-release
sudo apt install -y meson
sudo apt install -y libavformat-dev libavformat-extra libavdevice-dev libavdevice60
sudo apt install -y libsdl2-2.0-0 libsdl2-dev libsdl2-gfx-1.0-0 libsdl2-mixer-2.0-0 libsdl2-net-2.0-0 libsdl2-net-dev libsdl2-ttf-2.0-0 libsdl2-ttf-dev
sudo apt install -y libusb-1.0-0 libusb-1.0-0-dev libusb-dev libusb-java libusb-java-lib 
./install_release.sh
sudo apt install adb

### Faça no celular da sansung.
##  Configuração -> Sobre o telefone -> Informação do Software
## Clicar 5 vezes na versão de compilação  ( Aqui já liberou o menu do modo de desenvolvimento )
## No menu do desenvolvedor 
##  -> Habilite o debug pela USB.
## Celular ou Tablet pronto para uso ;-)
## Fonte :: https://www.samsung.com/br/support/mobile-devices/como-ativar-e-para-que-serve-o-menu-opcoes-do-desenvolvedor-no-meu-galaxy/
