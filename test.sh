#!/bin/sh
cd ~/Qt\ pro/
cd lib309
make
cp liblib309.a ../liblib309.a
cd ..
cd facetube
make
cp faceTube ~/Bureau/FaceTube
cp -r data ~/Bureau/data
cp -r xml ~/Bureau/xml
cd ..
cd fishtube
make
cp INFO-F-309-src ~/Bureau/FishTube
cd ..
cd condensate
make
cp condensate ~/Bureau/ConDensAte
