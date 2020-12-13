#!/usr/bin/env bash

# a commit hash of the stable version of OfrontPlus
COMMIT=21a72d80aee3b0caac60a5f2d27566cde2404d01

# target architecture
OTARGET=Linux_amd64

echo "removing old OfrontPlus folder"
rm -rf OfrontPlus

echo "cloning OfrontPlus"
git clone https://github.com/Oleg-N-Cher/OfrontPlus.git
cd OfrontPlus || exit

echo "checking out a stable version of OfrontPlus"
git checkout "$COMMIT"
cd ./Target/"$OTARGET"/Bin || exit

echo "building OfrontPlus"
export OBERON=.:../Lib/Sym:../Sym
./build

echo "returning back"
cd ../../../../

echo ""
echo ""

echo "all is good, Ofront+ is built"
