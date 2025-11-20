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

# instalação do OpenCV
sudo apt install -y $(apt search opencv | grep -E "^libopencv" 2>/dev/null | cut -f 1 -d "/")
