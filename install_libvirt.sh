sudo apt update
sudo apt install -y qemu-kvm libvirt-daemon-system
sudo adduser $USER libvirt
# Adm de VMs
sudo apt install -y virt-manager
# Possibilidade usar páginas de memória grandes
sudo apt install -y hugepages
# Visualizador de VMs
sudo apt install -y virt-viewer
# Instalador de Sistemas operacionais em VMs novas com ISOs de OSs.
sudo apt install -y virtinst

echo 256 | sudo tee /sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages

