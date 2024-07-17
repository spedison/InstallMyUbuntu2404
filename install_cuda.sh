sudo apt install -y nvidia-cuda-toolkit

## Reference : https://www.liberiangeek.net/2024/04/install-cuda-on-ubuntu-24-04/
sudo apt install -y libcutlass-dev libcutlass-dev libhipblas-doc libhipblas0 

## Está instalado o driver 535 vendo no nvidia-smi
sudo apt install -y cuda-drivers-fabricmanager-535

wget https://developer.download.nvidia.com/compute/cudnn/9.2.1/local_installers/cudnn-local-repo-debian12-9.2.1_1.0-1_amd64.deb
sudo dpkg -i cudnn-local-repo-debian12-9.2.1_1.0-1_amd64.deb
sudo cp /var/cudnn-local-repo-debian12-9.2.1/cudnn-local-B69DC6F6-keyring.gpg /usr/share/keyrings/
sudo add-apt-repository contrib
sudo apt-get update
sudo apt-get -y install cudnn-cuda-12


#JCuda
export RELEASE=version-12.0.0-RC02
cd $HOME/git_apps
git clone https://github.com/jcuda/jcuda.git
cd jcuda
git checkout tags/$RELEASE
mvn clean
mvn compile
mvn package
mvn install

mkdir $HOME/git_apps/jcuda-native

cd $HOME/git_apps/jcuda-native

#Instalando as bibliotecas nativas
for project in jcuda-main \
               jcuda-parent \
               jcuda-common \
               jcuda jcublas \
               jcufft \
               jcusparse \
               jcurand \
               jcusolver \
               jcudnn
do               
  git clone https://github.com/jcuda/${project}.git
	cd ${project}
  git checkout tags/${RELEASE}
  cd ..
done  
cmake ./jcuda-main
make all

## Ainda não fechado pois apresenta problemas na compilação.
## Provavelmente terei que baixar a biblioteca já compilada e checar as dependências.



