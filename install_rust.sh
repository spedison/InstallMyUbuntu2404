# Refs :: https://en.wikipedia.org/wiki/Rust_(programming_language)
#         https://www.rust-lang.org
#         https://wiki.debian.org/Rust

sudo apt update

# Instalação do Curl e demais ferramentas se necessário
sudo apt install -y build-essential curl git pkg-config libssl-dev

# Usa o cur para executar um script remoto para instalação do CURL multiplataforma.
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#Ambiente que será usado
rustup default stable

#Documentação local
rustup docs --book

#Mais algumas ferramentas de análise de código
rustup component add rust-analyzer rust-src

#TODO: Baixar o livro e converter em PDF.


