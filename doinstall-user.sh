#!/bin/sh
mkdir .config &&
cd .config &&
git clone https://github.com/ninjaaron/dot &&
cd dot &&
./setup.sh &&

rm ~/doinstall-user.sh
