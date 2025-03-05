# instala o Gnome Tweaks
sudo apt install gnome-tweaks

# Reinicia a configuração e restaura a última
dconf reset -f /org/gnome/

dconf load /org/gnome/ < backup-gnome.dump

#Para fazer o backup execute
#dconf dump / > backup-gnome.dump

source ./install_atalhos.sh
