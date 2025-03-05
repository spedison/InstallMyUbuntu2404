# 1) Remover as versões atuais.
sudo snap remove notepadqq
sudo apt remove --purge notepadqq -y
sudo apt autoremove -y

# 2) Instalar as dependências
sudo apt update && sudo apt upgrade -y
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt update
sudo apt install -y qtbase5-dev qtchooser qttools5-dev qttools5-dev-tools     libqt5webkit5-dev libqt5svg5-dev libqt5websockets5-dev libqt5webchannel5-dev     qtwebengine5-dev libqt5webenginecore5 libqt5webenginewidgets5
sudo apt install -y libuchardet-dev uchardet

qmake -v
conda deactivate 
hash -r
which qmake
export PATH=/usr/lib/qt5/bin:$PATH
export QT_SELECT=qt5
qmake -v

# Baixar os fontes do NotepadQQ (Fork do spedison)
git clone https://github.com/spedison/notepadqq.git
cd notepadqq
./configure --qmake /usr/lib/qt5/bin/qmake

# Tiveram Alguns Ajustes Manuais
# vim  src/include/nqqrun.h
# vim  src/ui/include/nqqrun.h
# vim src/ui/mainwindow.cpp
# Compilando e conversando com o ChatGPT.
make clean
make -j$(nproc)
sudo make install

# Não precisei ajustar nada de mais grave no ambiente. 
# Fiquei preocupado com os novos repositórios, mas pelo que vi não precisei fazer nada que quebrasse o sistema.
# Mas, o que vi que existe outras opções (mas não iguais ao notepadqq) como : Kate, geany ou mais parrudas com vscode.

# Script para remover.
# #!/bin/bash
# echo "Removendo Notepadqq..."
# sudo rm -rf /usr/local/bin/notepadqq
# sudo rm -rf /usr/local/lib/notepadqq
# sudo rm -rf /usr/local/share/applications/notepadqq.desktop
# sudo rm -rf /usr/local/share/icons/hicolor/*/apps/notepadqq.png
# sudo rm -rf /usr/local/share/metainfo/notepadqq.appdata.xml
# rm -rf ~/.config/notepadqq ~/.cache/notepadqq ~/.local/share/notepadqq
# update-desktop-database ~/.local/share/applications
# gtk-update-icon-cache -f /usr/share/icons/hicolor
# echo "Notepadqq removido com sucesso!"
