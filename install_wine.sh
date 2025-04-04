sudo apt update
sudo apt install -y wget xdg-utils xz-utils software-properties-common

sudo dpkg --add-architecture i386

sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources

sudo apt update
sudo apt install --install-recommends winehq-stable
sudo apt intall wine winetricks
wine --version


# Exemplo de configuração do ambiente.
# WINEPREFIX=~/.wine-kindle winetricks corefonts vcrun2017 dotnet48 gdiplus

