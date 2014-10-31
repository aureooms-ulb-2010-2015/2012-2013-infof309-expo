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
cp faceTube ~/Desktop/FaceTube
rm -r ~/Desktop/data
rm -r ~/Desktop/xml
cp -r data ~/Desktop
cp -r xml ~/Desktop
cd ..
cd fishtube
git pull
qmake
make clean
make
cp INFO-F-309-src ~/Desktop/FishTube
cd ..
cd condensate
git pull
qmake
make clean
make
cp condensate ~/Desktop/ConDensAte
