#!/usr/bin/env bash

# a commit hash of the stable version of Aria
COMMIT=8d43bd88d5c16f33c77a685d55f7d7052f1edf7c

OTARGET=Linux_amd64
OFRONT=$(pwd)/OfrontPlus
OTARGET_DIR=$OFRONT/Target/$OTARGET
OFRONT_LIB=$OTARGET_DIR/Lib

PATH=$PATH:$OTARGET_DIR
OBERON=.:$OTARGET_DIR/Bin:$OFRONT_LIB/Sym:$OFRONT_LIB

echo "information about ofront+"
ofront+

echo "cloning Aria"
git clone https://github.com/sgreenhill/aria.git
cd aria || exit
git checkout "$COMMIT"

echo "building OMake"
make -e "OBERON=$OBERON" -e "OTARGET=$OTARGET" -e "OFRONT=$OFRONT" OMake
make clean

echo ""
echo ""

echo "information about OMake"

./OMake -help

echo ""
echo ""

echo "all is good, OMake is built"
