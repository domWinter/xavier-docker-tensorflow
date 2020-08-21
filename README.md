# xavier-docker-tensorflow
Steps to build a GPU acclerated docker container for the Nvidia Jetson Xavier AGX platform

## Build

docker build -t gpu-tensorflow-jetson .

## RUN

docker run --runtime nvidia -it gpu-tensorflow-jetson python -c "from tensorflow.python.client import device_lib; print(device_lib.list_local_devices())"
