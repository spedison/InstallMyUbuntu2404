sudo apt install nvidia-cuda-toolkit
## Reference : https://www.liberiangeek.net/2024/04/install-cuda-on-ubuntu-24-04/
sudo apt install libcutlass-dev libcutlass-dev libhipblas-doc libhipblas0 

#JCuda
cd $HOME/git_apps
git clone https://github.com/jcuda/jcuda.git
cd jcuda
git checkout version-12.0.0-RC02
mvn clean
mvn compile
mvn package
mvn install
