FROM python:3.8-bullseye

USER root

RUN apt update
RUN apt install -y git cmake pkg-config crossbuild-essential-armhf gcc

RUN apt install -y libgtk2.0-dev
RUN apt install -y libgstreamer1.0-dev \
                   libgstreamer-plugins-base1.0-dev \
                   libgstreamer-plugins-bad1.0-dev \
                   gstreamer1.0-plugins-base \
                   gstreamer1.0-plugins-good \
                   gstreamer1.0-plugins-bad \
                   gstreamer1.0-plugins-ugly \
                   gstreamer1.0-libav \
                   gstreamer1.0-tools \
                   gstreamer1.0-x \
                   gstreamer1.0-alsa \
                   gstreamer1.0-gl \
                   gstreamer1.0-gtk3 \
                   gstreamer1.0-qt5 \
                   gstreamer1.0-pulseaudio
RUN apt-get -y install qtbase5-dev \
                       libdc1394-22-dev \
                       libavcodec-dev \
                       libavformat-dev \
                       libswscale-dev
RUN apt-get install -y unzip nano wget

RUN pip3 install --upgrade pip
RUN pip3 install opencv-contrib-python

WORKDIR /home/
ENTRYPOINT "bash"