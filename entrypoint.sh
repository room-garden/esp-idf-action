#!/bin/bash -l

source /opt/esp-idf/export.sh

cd ${1} && idf.py build
