FROM ubuntu:24.04

USER root

RUN apt-get update && apt-get install -y \
    nano \
    libglapi-mesa \
    libgomp1 \
    libgl1

ADD test.py /scripts/test.py

ADD ParaView-5.13.1-osmesa-MPI-Linux-Python3.10-x86_64.tar.gz /opt/
