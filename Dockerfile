FROM ubuntu:20.04

RUN \
  apt-get update && \
  apt-get install -y \
    git \
    python3 \
    python3-pip \
    python3-venv && \
  apt-get clean

RUN \
  update-alternatives --install /usr/bin/python python /usr/bin/python3 1

WORKDIR /opt

RUN \
  git clone --recursive https://github.com/espressif/esp-idf.git && \
  git -C esp-idf checkout v4.1.1 && \
  ./esp-idf/install.sh

COPY entrypoint.sh /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]
