# Instalação "Automática" dos pacotes em máquinas novas com UBUNTU 24.04

Foi feito para facilitar a instalação de pacotes (alguns eu não consegui automatizar completamente) 
mas consegui sistematizar o que precisa ser feito para disponibilizar uma máquina com pacotes para desenvolvimento.

## Ordem utilizada
 1) install_meu_prompt.sh   (Um prompt colorido com dados de host/usuário/diretório e branch do git)
 2) install_aplicativos.sh  (Instala pacotes básicos e as IDEs do Jetbrains para Go, Python, Java e C++)
 3) install_app_imagem.sh   (Aplicativos de tratamento de imagens e SCRCPY)
 4) install_chrome.sh       (Google Chrome)
 5) install_ferramentas.sh  (Vários pacotes em Snap)
 6) install_libvirt.sh      (Todas as ferramentas do Libvirt para usar as máquinas virtuais)
 7) install_gnome.sh        (Configura imagem de fundo e teclas de atalho)
