#!/bin/sh
cd ~/Qt\ pro/
cd lib309
qmake
make clean

cd ..
cd facetube
qmake
make clean

cd ..
cd fishtube
qmake
make clean

cd ..
cd condensate
qmake
make clean
