sudo apt install breeze-cursor-theme
# Para usar o tema breeze
gsettings set org.gnome.desktop.interface cursor-theme 'breeze'

# Para listar os temas possíveis.
# ls -ld  /usr/share/icons/* | grep "^d"

#Para mudar o tamanho do cursor:
gsettings set org.gnome.desktop.interface cursor-size 200

# Para localizar o curso com o Control Esquerdo
gsettings set org.gnome.desktop.interface locate-pointer true

#Para ler a configuração
gsettings get org.gnome.desktop.interface locate-pointer



