sudo bash -c "echo $HOME/lib/java/opencv/share/java/opencv4 > /etc/ld.so.conf.d/local_user_spedison.conf"
sudo bash -c "sudo echo $HOME/lib/java/jcuda >> /etc/ld.so.conf.d/local_user_spedison.conf"
sudo bash -c "sudo echo $HOME/lib/java/javafx >> /etc/ld.so.conf.d/local_user_spedison.conf"
sudo ldconfig
