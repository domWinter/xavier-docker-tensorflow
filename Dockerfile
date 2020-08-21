FROM nvcr.io/nvidia/l4t-base:r32.4.2

WORKDIR /

RUN apt update && apt install -y --fix-missing make g++

RUN apt update && apt install -y --fix-missing python3-pip libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev libjpeg8-dev liblapack-dev libblas-dev gfortran python3-h5py

RUN HDF5_DIR=/usr/lib/x86_64-linux-gnu/hdf5/serial/ pip3 install -U pip testresources setuptools cython numpy==1.16.1 future==0.17.1 mock==3.0.5 h5py==2.10.0 keras_preprocessing==1.0.5 keras_applications==1.0.8 gast==0.2.2 pybind11

RUN pip3 install --pre --no-cache-dir --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v44 tensorflow

CMD ['bash']
