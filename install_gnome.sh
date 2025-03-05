# instala o Gnome Tweaks
sudo apt install gnome-tweaks

# Reinicia a configuração e restaura a última
dconf reset -f /org/gnome/

dconf load /org/gnome/ < backup-gnome.dump

#Para fazer o backup execute
#dconf dump / > backup-gnome.dump

source ./install_atalhos.sh

source ./install_apps_in_dock.sh

gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 7

cp ./img/2024-08-30-07-42-52-20240331_155447.jpg /home/spedison/.local/share/backgrounds/.

dconf load /org/gnome/desktop/wm/preferences/ < desktop-config.dump


