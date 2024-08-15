# Pacotes necessários
sudo apt install -y ffmpeg libffmpeg-nvenc-dev

sudo apt install -y libtesseract-dev libtesseract5 tesseract-ocr-por tesseract-ocr-enm 
sudo apt install -y libgtk3-nocsd0 libgtk3.0-cil libgtk3.0-cil-dev libgtk-3-dev libgtkglext1  libgtkglext1-dev 
sudo apt install -y libv4l-dev libgstreamerd-3-0  libgstreamerd-3-dev 
sudo apt install -y libhdf5-dev libhdf5-serial-dev libpbihdf-dev
sudo apt install -y libeigen3-dev libcxsparse4 libelpa-dev libelpa19 libgsl27 libgslcblas0 libgsl27 libelpa-dev
sudo apt install -y libngraph0-dev libngraph0 ngraph-gtk ngraph-gtk-addin-import-ps

# Não consegui ainda configurar o Blass decentemente.
sudo apt install -y libblas-dev liblapack-dev gfortran 
sudo apt install -y libatlas-base-dev 
sudo apt install -y liblapacke-dev 

# Bibliotecas de processamento paralelo TBB e openMP                    
sudo apt install -Y libbtbb-dev libtbb-dev
sudo apt install -y libomp5-18  libomp-dev

# Usando o OpenGl para Java.
sudo apt install -y libjogl2-java libjogl2-java-doc 

## Instalar o JavaFX para usar as janelas.
## Outro Script. (MUITO mais simples)

#Baixar a versão 4.10.0 do OpenCV.
mkdir $HOME/git_apps/opencv/
cd $HOME/git_apps/opencv/

# Baixar os fontes do repositório da versão 4.10.0
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git
cd ./opencv 
git checkout 4.10.0
cd ../opencv_contrib
git checkout 4.10.0

#Criar o direorio de build
mkdir $HOME/git_apps/opencv/build
cd $HOME/git_apps/opencv/build

# Diretório de destino para colocar o resultado da compilação
mkdir -p /home/spedison/lib/java/opencv

#Mudar o link simbólico do gcc-13 para o gcc-12 (podemos voltar depois da compilação se necessário)
sudo rm /usr/bin/gcc; ln -s /usr/bin/gcc-12 /usr/bin/gcc
sudo rm /usr/bin/g++; ln -s /usr/bin/g++-12 /usr/bin/g++

# Ajustar a versão que vc deseja
# sm_75 -> RTX 2070,4060...
## SM75 or SM_75, compute_75 –
## GTX/RTX Turing – GTX 1660 Ti, RTX 2060, RTX 2070, RTX 2080, Titan RTX, Quadro RTX 4000, Quadro RTX 5000, Quadro RTX 6000, Quadro RTX 8000, Quadro T1000/T2000, Tesla T4
## Ref: https://arnon.dk/matching-sm-architectures-arch-and-gencode-for-various-nvidia-cards/
# Preparar a compilação com CMake

cmake        -D SHELL="/bin/bash -x" \
             -D CMAKE_BUILD_TYPE=RELEASE \
             -D ENABLE_GNU_STL_DEBUG=OFF \
             -D BUILD_ZLIB=ON \
             -D WITH_TIFF=ON \
             -D BUILD_JPEG=ON \
             -D BUILD_PNG=ON \
             -D BUILD_WEBP=ON \
	     -D WITH_OPENCL=ON \
             -D BUILD_SHARED_LIBS=ON \
             -D ENABLE_FAST_MATH=1 \
	     -D WITH_INF_ENGINE=ON \
             -D WITH_NGRAPH=ON \
             -D INSTALL_PYTHON_EXAMPLES=OFF \
             -D BUILD_opencv_python=ON \
             -D INSTALL_JAVA_EXAMPLES=OFF \
             -D INSTALL_C_EXAMPLES=OFF \
             -D BUILD_EXAMPLES=OFF \
             -D WITH_GTK=OFF \
             -D WITH_TBB=ON \
             -D WITH_OPENMP=OFF  \
             -D WITH_EIGEN=ON \
             -D WITH_IPP=ON \
             -D OPENCV_ENABLE_NONFREE=ON \
             -D BUILD_opencv_apps=ON \
             -D WITH_V4L=ON \
             -D WITH_QT=OFF \
             -D BUILD_opencv_java=ON \
             -D BUILD_opencv_python=ON\
             -D WITH_CSTRIPES=ON \
             -D BUILD_opencv_viz=ON \
             -D WITH_OPENGL=OFF \
             -D WITH_VA_INTEL=OFF \
             -D WITH_GSTREAMER=ON \
             -D BUILD_DOCS=OFF  \
             -D BUILD_PERF_TESTS=OFF  \
             -D BUILD_TESTS=OFF  \
             -D OPENCV_GENERATE_PKGCONFIG=ON \
             -D OPENCV_PC_FILE_NAME=opencv.pc \
             -D WITH_FFMPEG=ON \
             -D FFMPEG_LIBDIR="/usr/lib/x86_64-linux-gnu" \
             -D FFMPEG_INCLUDE_DIRS="/usr/include/" \
             -D CMAKE_INSTALL_PREFIX="/home/spedison/lib/java/opencv"  \
             -D OPENCV_EXTRA_MODULES_PATH="../opencv_contrib/modules" \
             -D WITH_INF_ENGINE=ON \
             -D CUDA_FAST_MATH=1 \
             -D WITH_CUBLAS=1 \
             -D WITH_CUDA=ON \
             -D BUILD_opencv_cudacodec=ON \
	     -D OPENCV_DNN_OPENCL=ON \
             -D WITH_CUDNN=ON \
             -D OPENCV_DNN_CUDA=ON \
	     -D CUDA_ARCH_PTX=75 \
             -D CUDA_ARCH_BIN=7.5 \
             -D ARCH=sm_75 \
             -D gencode=arch=compute_75,code=sm_75 \
             -D WITH_CUFFT=ON  \
             -D WITH_NVCUVID=OFF  \
	     -D WITH_NVCUVENC=OFF \
             -D BUILD_JAVA=ON \
             -D BUILD_opencv_java=ON \
             -D BUILD_opencv_java_bindings_generator=ON \
             -D OPENCV_JAVA_SOURCE_VERSION=21 \
             -D OPENCV_JAVA_TARGET_VERSION=21 \
             -D JAVA_INCLUDE_PATH2="/home/spedison/.sdkman/candidates/java/current/include/linux" \
             -D BUILD_FAT_JAVA_LIB=OFF \
             -D CMAKE_C_COMPILER=/usr/bin/gcc-12 \
             -D CMAKE_CXX_COMPILER=/usr/bin/g++-12 \
             -D CMAKE_CPP_COMPILER=/usr/bin/cpp-12 \
             -D CMAKE_CXX_STANDARD=14 \
             -D ENABLE_CXX11=OFF \
             -D Tesseract_INCLUDE_DIR="/usr/include/tesseract" \
             -D Tesseract_LIBRARY="/usr/lib/x86_64-linux-gnu/libtesseract.so.5" \
             -D Tesseract_DIR="/usr/share/tesseract-ocr/5" \
             -D WITH_TESSERACT=ON \
             ../opencv

make clean 

make -j 50

make install

## Adicionado esse path, no UBUNTU com JDK 21 Da GrallVM CE pois, esse caminho é usado como padrão. 
## Além disso eu achei muito sugestivo e fora das outras LIBS do SOM.
## Isso facilita o desenvolvimento e não pertuba os outros programas.
sudo mkdir -p /usr/java/packages/lib
sudo ln -s $HOME/lib/java/opencv/share/java/opencv4/opencv-4100.jar  /usr/java/packages/lib/opencv-4100.jar 
sudo ln -s $HOME/lib/java/opencv/share/java/opencv4/libopencv_java4100.so  /usr/java/packages/lib/libopencv_java4100.so

## As outroas bibliotecas vou trazendo conforme for utilizando.

