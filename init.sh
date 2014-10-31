#!/bin/sh
cd ~/Qt\ pro/
cd lib309
git pull
qmake
make clean
make
cp liblib309.a ../liblib309.a
cd ..
cd facetube
git pull
qmake
make clean
make
cp faceTube ~/Bureau/FaceTube
cp -r data ~/Bureau/data
cp -r xml ~/Bureau/xml
cd ..
cd fishtube
git pull
qmake
make clean
make
cp INFO-F-309-src ~/Bureau/FishTube
cd ..
cd condensate
git pull
qmake
make clean
make
cp condensate ~/Bureau/ConDensAte
