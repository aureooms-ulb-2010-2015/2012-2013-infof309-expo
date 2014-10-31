#!/bin/sh
sudo -s
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libopencv-dev build-essential checkinstall cmake pkg-config yasm libtiff4-dev libjpeg-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libgtk2.0-dev libjasper-dev libopenexr-dev python-dev python-numpy python-tk libtbb-dev libeigen2-dev libfaac-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev libqt4-dev libqt4-opengl-dev sphinx-common texlive-latex-extra libv4l-dev libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev ffmpeg lame x264 v4l-utils
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-4.7 g++-4.7
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.6
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.7 40 --slave /usr/bin/g++ g++ /usr/bin/g++-4.7
sudo update-alternatives --config gcc
sudo update-alternatives --config gcc
tar -xvf OpenCV-2.4.1.tar.bz2
cd OpenCV-2.4.1/
mkdir build
cd build
cmake -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
make
sudo make install
sudo touch /etc/ld.so.conf
sudo echo "/usr/local/lib" >> /etc/ld.so.conf
sudo ldconfig
sudo touch /etc/bash.bashrc
sudo echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig" >> /etc/bash.bashrc
sudo echo "export PKG_CONFIG_PATH" >> /etc/bash.bashrc

