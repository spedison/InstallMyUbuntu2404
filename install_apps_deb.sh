# Outros apps básicos para baixa projetos e editar textos e descompactar arquivos.
sudo apt install -y git curl wget vim unzip

# Mapear a rede com serviços e IPs
# Exemplo : sudo nmap -sS 192.xx.xx.0/24
sudo apt install -y nmap

# App para comparação de diretórios e arquivos 
# em uma interface gráfica amigável.
sudo apt-get install -y meld

# https://github.com/jordansissel/xdotool/
# Automação de Janela, Telcado e Mouse.
sudo apt-get install -y xdotool

# Aplicativo para listar mover janelas. 
# https://github.com/Conservatory/wmctrl
# 
# Exemplo
# wmctrl -r 'Nome_da_Janela' -e 0,0,0,-1,-1
# wmctrl -l
sudo apt-get install -y wmctrl

# ImageMagick : Apps para manipulação de imagens 
# usando linha de comando
# https://imagemagick.org
sudo apt install -y  imagemagick

# App que converte webp em jpg
# Exemplo : dwebp apache-Lucene.webp -o apache-Lucene.png
sudo apt install -y dwebp 

# Usando o ssh
sudo apt install -y openssh-client openssh-server

# Para que possa configurar o AppArMor.
sudo apt install -y apparmor-utils

# Para converte grafos em imagens (fica muito bom!).
# https://graphviz.org/download/
sudo apt install -y graphviz

# Suporte para o Mouse Logtech
sudo apt install -y solaar logiops

# Editor vim modo gráfico
sudo apt install -y vim-gtk3

# Aplicativos para manipulaçãp de arquivo Latex (inclusive o latex make)
sudo apt install -y texlive texlive-latex-base texlive-science texlive-publishers texlive-pictures-doc texlive-latex-extra texlive-lang-portuguese texlive-font-utils texlive-binaries 
sudo apt install -y texlive-bibtex-extra texlive-base tth tpp tgif texworks texmaker texmaker-data sent latexmk
