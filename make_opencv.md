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
CC=gcc-7 CXX=g++-7 cmake -D CMAKE_BUILD_TYPE=RELEASE -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
 -D OPENCV_GENERATE_PKGCONFIG=ON -D BUILD_opencv_apps=ON -D BUILD_opencv_calib3d=ON -D BUILD_opencv_core=ON \
 -D BUILD_opencv_cudaarithm=ON -D BUILD_opencv_cudabgsegm=ON -D BUILD_opencv_cudacodec=ON \
 -D BUILD_opencv_cudafeatures2d=ON -D BUILD_opencv_cudafilters=ON -D BUILD_opencv_cudaimgproc=ON \
 -D BUILD_opencv_cudalegacy=ON -D BUILD_opencv_cudaobjdetect=ON -D BUILD_opencv_cudaoptflow=ON \
 -D BUILD_opencv_cudastereo=ON -D BUILD_opencv_cudawarping=ON -D BUILD_opencv_cudev=ON \
 -D BUILD_opencv_features2d=ON -D BUILD_opencv_flann=ON -D BUILD_opencv_highgui=ON -D BUILD_opencv_imgcodecs=ON \
 -D BUILD_opencv_imgproc=ON -D BUILD_opencv_ml=ON -D BUILD_opencv_objdetect=ON \
 -D BUILD_opencv_photo=ON -D BUILD_opencv_stitching=ON -D BUILD_opencv_superres=ON \
 -D BUILD_opencv_ts=ON -D BUILD_opencv_video=ON -D BUILD_opencv_videoio=ON -D BUILD_opencv_videostab=ON \
 -D WITH_1394=ON -D WITH_CUBLAS=ON -D WITH_CUDA=ON -D WITH_CUFFT=ON -D WITH_EIGEN=ON -D WITH_FFMPEG=ON \
 -D WITH_GDAL=OFF -D WITH_GPHOTO2=ON -D WITH_GIGEAPI=ON -D WITH_GSTREAMER=ON -D WITH_GTK=ON \
 -D WITH_INTELPERC=OFF -D WITH_IPP=ON -D WITH_IPP_A=OFF -D WITH_JASPER=ON -D WITH_JPEG=ON -D WITH_LIBV4L=ON \
 -D WITH_OPENCL=ON -D WITH_OPENCLAMDBLAS=OFF -D WITH_OPENCLAMDFFT=OFF -D WITH_OPENCL_SVM=OFF \
 -D WITH_OPENEXR=ON -D WITH_OPENGL=ON -D WITH_OPENMP=OFF -D WITH_OPENNI=OFF -D WITH_PNG=ON \
 -D WITH_PTHREADS_PF=OFF -D WITH_PVAPI=ON -D WITH_QT=ON -D WITH_TBB=ON -D WITH_TIFF=ON \
 -D WITH_UNICAP=OFF -D WITH_V4L=ON -D WITH_VTK=ON -D WITH_WEBP=ON -D WITH_XIMEA=OFF -D WITH_XINE=OFF \
 -D CUDA_NVCC_FLAGS=--expt-relaxed-constexpr -D CUDA_FAST_MATH=ON -D CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-11.0 \
 -D CUDA_HOST_COMPILER=/usr/bin/gcc-7 ..
 ```

 make and install
 ```
 proc
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
