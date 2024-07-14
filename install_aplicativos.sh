# Aplicativos mais básicos
sudo apt install -y git curl wget htop btop vim terminator gnuplot octave net-tools binutils make cmake gcc g++ zip unzip gzip libreoffice


# IDEs da JetBrains
# CLion
cd ~
wget https://download-cdn.jetbrains.com/cpp/CLion-2024.1.4.tar.gz
gunzip CLion-2024.1.4.tar.gz
cd ~/.local/share
tar -xvf ~/CLion-2024.1.4.tar
ln -s ~/.local/share/clion-2024.1.4 ~/.local/share/clion
echo 'export PATH=$PATH:/home/spedison/.local/share/clion/bin' >> ~/.bashrc
rm ~/CLion-2024.1.4.tar

#GoLand
cd ~
wget https://download-cdn.jetbrains.com/go/goland-2024.1.4.tar.gz
gunzip goland-2024.1.4.tar.gz
cd ~/.local/share
tar -xvf ~/goland-2024.1.4.tar
ln -s ~/.local/share/GoLand-2024.1.4 ~/.local/share/goland
echo 'export PATH=$PATH:/home/spedison/.local/share/goland/bin' >> ~/.bashrc
rm ~/goland-2024.1.4.tar

#IntelliJ
cd ~
wget https://download-cdn.jetbrains.com/idea/ideaIU-2024.1.4.tar.gz
gunzip ideaIU-2024.1.4.tar.gz
cd ~/.local/share
tar -xvf ~/ideaIU-2024.1.4.tar
ln -s ~/.local/share/idea-IU-241.18034.62 ~/.local/share/intellij
ln -s ~/.local/share/intellij/bin/idea.sh  ~/.local/share/intellij/bin/intellij.sh
echo 'export PATH=$PATH:/home/spedison/.local/share/intellij/bin' >> ~/.bashrc
rm ~/ideaIU-2024.1.4.tar


#PyCharm
cd ~
wget https://download-cdn.jetbrains.com/python/pycharm-professional-2024.1.4.tar.gz
gunzip pycharm-professional-2024.1.4.tar.gz
cd ~/.local/share
tar -xvf ~/pycharm-professional-2024.1.4.tar
ln -s ~/.local/share/pycharm-2024.1.4 ~/.local/share/pycharm
echo 'export PATH=$PATH:/home/spedison/.local/share/pycharm/bin' >> ~/.bashrc
rm ~/pycharm-professional-2024.1.4.tar
