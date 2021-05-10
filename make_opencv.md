# How to make opencv and opencv_contrib

```
sudo apt update && sudo apt upgrade
sudo ubuntu-drivers autoinstall
sudo reboot
```
```
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804_10.1.168-1_amd64.deb
sudo apt update 

sudo apt install cuda cuda-drivers
```

add .bash.rc below.
```
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
```

reboot
```sudo reboot```

install packeges
```
sudo apt install python3-dev python3-pip gcc-7 g++-7 cmake build-essential git pkg-config ccache \
unzip extra-cmake-modules mesa-utils libgtk-3-dev ffmpeg \
libavcodec-dev libavformat-dev libswscale-dev libtbb-dev libogre-1.9-dev \
libjpeg-dev libpng-dev libtiff5-dev x264 libxvidcore-dev yasm \
libxine2-dev libv4l-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev \
libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev \
x264 v4l-utils ffmpeg libdc1394-22 libdc1394-22-dev libtiff5-dev \
qt5-default libeigen3-dev libeigen3-doc tesseract-ocr tesseract-ocr-jpn \
vtk7 tcl-vtk7 python3-vtk7 libgflags-dev autoconf automake libtool \
autoconf-archive libleptonica-dev libtesseract-dev gphoto2 liblapacke-dev
```
```
sudo pip3 install numpy
```

download opencv and opencv_contirb source from github
```
cd ~/
git clone --depth=1 https://github.com/opencv/opencv.git
git clone --depth=1 https://github.com/opencv/opencv_contrib.git
cd opencv && mkdir build && cd build
```

cmake
```
cmake -D CMAKE_BUILD_TYPE=RELEASE \
 -D CMAKE_INSTALL_PREFIX=/usr/local \
 -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
 -D INSTALL_C_EXAMPLES=ON \
 -D INSTALL_PYTHON_EXAMPLES=ON \
 -D INSTALL_TESTS=ON \
 -D WITH_PYTHON=ON \
 -D BUILD_opencv_python2=OFF \
 -D BUILD_opencv_python3=ON \
 -D PYTHON_DEFAULT_EXECUTABLE=python3 \
 -D WITH_MKL=ON \
 -D WITH_CUDA=ON \
 -D CUDA_FAST_MATH=ON \
 -D WITH_CUBLAS=ON \
 -D WITH_CUDNN=ON \
 -D WITH_NVCUVID=OFF \
 -D OPENCV_DNN_CUDA=OFF \
 -D BUILD_opencv_cudaimgproc=OFF \
 -D BUILD_EXAMPLES=ON \
 -D WITH_TBB=ON \
 -D WITH_V4L=ON \
 -D WITH_QT=ON \
 -D WITH_OPENGL=ON ..
 ```

 make and install
 ```
 nproc
 >>>number
 make -j$(nproc)
sudo make install
```

make sure install correctly
```
python3
import cv2
print(cv2.cuda.getCudaEnabledDeviceCount())
```
if the counted number is over 0, it is ok.
if not,
```
cd ../
rm -rf build
mkdir build && cd build
cmake ..........
```
