# Pacotes necessários
sudo apt install -y ffmpeg libffmpeg-nvenc-dev

sudo apt install -y libtesseract-dev libtesseract5 tesseract-ocr-por tesseract-ocr-enm libgtk3-nocsd0 libgtk3.0-cil libgtk3.0-cil-dev libgtk-3-dev libgtkglext1  libgtkglext1-dev libgstreamerd-3-0  libgstreamerd-3-dev 

# Não consegui ainda configurar o Blas decentemente.
sudo apt install -y libblas-dev liblapack-dev gfortran

mkdir -p /home/spedison/lib/java/opencv

#Mudar o link simbólico do gcc-13 para o gcc-12 (podemos voltar depois da compilação se necessário)
sudo rm /usr/bin/gcc; ln -s /usr/bin/gcc-12 /usr/bin/gcc
sudo rm /usr/bin/g++; ln -s /usr/bin/g++-12 /usr/bin/g++

# Baixar os fontes do repositório

# Ajustar a versão que vc deseja
# sm_75 -> RTX 2070,4060...
## SM75 or SM_75, compute_75 –
## GTX/RTX Turing – GTX 1660 Ti, RTX 2060, RTX 2070, RTX 2080, Titan RTX, Quadro RTX 4000, Quadro RTX 5000, Quadro RTX 6000, Quadro RTX 8000, Quadro T1000/T2000, Tesla T4
## Ref: https://arnon.dk/matching-sm-architectures-arch-and-gencode-for-various-nvidia-cards/
# Preparar a compilação com CMake
cmake        -D SHELL="/bin/bash -x" \
             -D CMAKE_BUILD_TYPE=RELEASE \
             -D ENABLE_GNU_STL_DEBUG=OFF \
             -D OPENCV_GENERATE_PKGCONFIG=ON \
             -D BUILD_ZLIB=ON \
             -D WITH_TIFF=ON \
             -D BUILD_JPEG=ON \
             -D BUILD_PNG=ON \
             -D BUILD_WEBP=ON \
             -D BUILD_SHARED_LIBS=OFF \
             -D ENABLE_FAST_MATH=1 \
             -D INSTALL_PYTHON_EXAMPLES=ON \
             -D INSTALL_JAVA_EXAMPLES=ON \
             -D INSTALL_C_EXAMPLES=ON \
             -D BUILD_EXAMPLES=ON \
             -D WITH_GTK=true \
             -D WITH_TBB=ON \
             -D WITH_OPENMP=OFF  \
             -D WITH_EIGEN=ON \
             -D WITH_IPP=ON \
             -D OPENCV_ENABLE_NONFREE=ON \
             -D BUILD_opencv_apps=ON \
             -D WITH_V4L=ON \
             -D WITH_QT=OFF \
             -D BUILD_opencv_java=ON \
             -D BUILD_opencv_python=ON \
             -D WITH_CSTRIPES=ON \
             -D BUILD_opencv_viz=ON \
             -D WITH_FFMPEG=ON \
             -D WITH_OPENGL=ON \
             -D WITH_VA_INTEL=OFF \
             -D WITH_GSTREAMER=ON \
             -D BUILD_DOCS=OFF  \
             -D BUILD_PERF_TESTS=OFF  \
             -D BUILD_TESTS=OFF  \
             -D OPENCV_GENERATE_PKGCONFIG=ON \
             -D OPENCV_PC_FILE_NAME=opencv.pc \
             -D FFMPEG_LIBDIR="/usr/lib/x86_64-linux-gnu" \
             -D FFMPEG_INCLUDE_DIRS="/usr/include/" \
             -D CMAKE_INSTALL_PREFIX="/home/spedison/lib/java/opencv"  \
             -D OPENCV_EXTRA_MODULES_PATH="../opencv_contrib/modules" \
             -D WITH_INF_ENGINE=ON \
             -D CUDA_FAST_MATH=1 \
             -D WITH_CUBLAS=1 \
             -D WITH_CUDA=ON \
             -D BUILD_opencv_cudacodec=ON \
             -D WITH_CUDNN=ON \
             -D OPENCV_DNN_CUDA=ON \
             -D CUDA_ARCH_BIN=7.5 \
             -D ARCH=sm_75 \
             -D gencode=arch=compute_75,code=sm_75 \
             -D WITH_CUFFT=ON  \
             -D WITH_NVCUVID=ON  \
             -D BUILD_JAVA=ON \
             -D BUILD_opencv_java=ON \
             -D BUILD_opencv_java_bindings_generator=ON \
             -D OPENCV_JAVA_SOURCE_VERSION=21 \
             -D OPENCV_JAVA_TARGET_VERSION=21 \
             -D JAVA_INCLUDE_PATH2="/home/spedison/.sdkman/candidates/java/current/include/linux" \
             -D BUILD_FAT_JAVA_LIB=ON \
             -D CMAKE_C_COMPILER=/usr/bin/gcc \
             -D CMAKE_CXX_COMPILER=/usr/bin/g++ \
             -D CMAKE_CPP_COMPILER=/usr/bin/cpp \
             -D CMAKE_CXX_STANDARD=14 \
             -D ENABLE_CXX11=OFF \
             -D Tesseract_DIR="/usr/share/tesseract-ocr/5" \
             -D WITH_TESSERACT=ON \
             -D BUILD_opencv_viz=ON \
             ../opencv
             
make -j 10             
