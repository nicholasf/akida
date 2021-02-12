FROM ubuntu:20.04

# get APT
RUN apt update
RUN apt -y upgrade
RUN apt -y install python3 python3-dev python3-pip

# check python
RUN python3 -V

RUN apt install -y build-essential libssl-dev libffi-dev python3-venv

RUN pip3 install akida && \
    pip3 install cnn2snn && \
    pip3 install akida-models && \
    pip3 install --upgrade tensorflow

