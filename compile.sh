#!/bin/sh
cd ~/Qt\ pro/
cd lib309
qmake
make
cp liblib309.a ../liblib309.a
cd ..
cd facetube
qmake
make
cp faceTube ~/Desktop/FaceTube
rm -r ~/Desktop/data
rm -r ~/Desktop/xml
cp -r data ~/Desktop
cp -r xml ~/Desktop
cd ..
cd fishtube
qmake
make
cp INFO-F-309-src ~/Desktop/FishTube
cd ..
cd condensate
qmake
make
cp condensate ~/Desktop/ConDensAte
