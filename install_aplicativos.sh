# Aplicativos mais básicos
sudo apt install -y mc git curl wget htop btop vim terminator gnuplot octave net-tools binutils make cmake gcc g++ 
sudo apt install -y zip unzip gzip libreoffice tree silversearcher-ag


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


#Anaconda
cd ~
export INSTALLER_VERSION="2024.06-1"
# Pacotes necessários
# Original 
# sudo apt install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
# Ajustado
sudo apt install -y libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 liboss4-salsa-asound2 libxi6 libxtst

#        https://repo.anaconda.com/archive/Anaconda3-2024.06-1-Linux-x86_64.sh
curl -O https://repo.anaconda.com/archive/Anaconda3-$INSTALLER_VERSION-Linux-x86_64.sh

# Não tem uma instalação decente.
# Deve aceiter os termos e pedir para alterar o .bashrc
bash "$HOME/Anaconda3-$INSTALLER_VERSION-Linux-x86_64.sh"

#SDKMan
curl -s "https://get.sdkman.io" | bash

source ~/.bashrc
sdk install java 21.0.2-graalce
## Responder No para as questões abaixo... Por falta da automação na linha de comando
sdk install java 17.0.9-graalce
sdk install java 21.0.2-open
# Esse era um teste por conta das mensagens. Melhorar da próxima vez.
# while true; do echo no; sleep 0.1s; done  | sdk install java 21.0.2-open
sdk install java 8.0.412-amzn
echo "" >> $HOME/.bashrc
echo "## Caminhos para o Java" >> $HOME/.bashrc
echo 'export JAVA_HOME=$HOME/.sdkman/candidates/java/current' >> $HOME/.bashrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> $HOME/.bashrc









