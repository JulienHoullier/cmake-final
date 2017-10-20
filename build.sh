#!/bin/bash

rm -Rf build
rm -Rf dist
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX="../dist" -DCMAKE_BUILD_TYPE=Release ..
make
make test
make install
