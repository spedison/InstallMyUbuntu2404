sudo apt update && sudo apt upgrade

sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update

sudo apt-get --allow-unauthenticated install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "DOcker instalado!"

sudo systemctl status docker

sudo systemctl enable docker

usermod -aG docker spedison

sudo docker run hello-world

echo "Aparecendo o Hello Word o docker está configurado, talvez tenha fechar a sessão do usuário atual para funcionar com ele." 

echo "Intalando o NVidia Container Toolkit"

curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt-get update

sudo apt-get install -y nvidia-container-toolkit

sudo nvidia-ctk runtime configure --runtime=docker

sudo systemctl restart docker

echo "Teste do docker com a placa de Vídeo NVidia"
sudo docker run --rm --runtime=nvidia --gpus all ubuntu nvidia-smi
