#!/bin/bash -l

export IDF_TOOLS_PATH=/root/.espressif
source /opt/esp-idf/export.sh

cd ${1} && idf.py build
