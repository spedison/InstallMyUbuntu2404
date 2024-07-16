sudo apt install -y nvidia-cuda-toolkit

## Reference : https://www.liberiangeek.net/2024/04/install-cuda-on-ubuntu-24-04/
sudo apt install -y libcutlass-dev libcutlass-dev libhipblas-doc libhipblas0 

## Está instalado o driver 535 vendo no nvidia-smi
sudo apt install -y cuda-drivers-fabricmanager-535

#JCuda
cd $HOME/git_apps
git clone https://github.com/jcuda/jcuda.git
cd jcuda
git checkout version-12.0.0-RC02
mvn clean
mvn compile
mvn package
mvn install
