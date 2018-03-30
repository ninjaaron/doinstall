#!/bin/sh
mkdir .config &&
cd .config &&
git clone https://github.com/ninjaaron/dot &&
cd dot &&
./setup.sh &&

pip3 install --user pip dirlog &&
rm ~/doinstall-user.sh
