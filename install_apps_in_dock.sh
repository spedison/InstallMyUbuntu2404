# Para fazer backup e restore da configuração da dock
#dconf read /org/gnome/shell/favorite-apps > favorite-apps-backup.txt
#dconf write /org/gnome/shell/favorite-apps "$(cat favorite-apps-backup.txt)"

cp ./desktop_files/* ~/.local/share/applications/.

chmod u+x ~/.local/share/applications/je*
#Ajusta para o caso de usuário
#TODO : Tem que alterar o usuário desses arquivos


#Restaura a barra
dconf write /org/gnome/shell/favorite-apps "$(cat favorite-apps-backup.dump)"



