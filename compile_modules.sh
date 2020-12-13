#!/usr/bin/env bash

# this is the list of your modules, add your module only here
MODULES=(src/Square.cp src/HelloWorld.ob2)
MODULE_NAMES=(Square HelloWorld)

OTARGET=Linux_amd64
OFRONT=$(pwd)/OfrontPlus
OTARGET_DIR=$OFRONT/Target/$OTARGET
OFRONT_LIB=$OTARGET_DIR/Lib

PATH=$PATH:$OTARGET_DIR

OBERON=.:$OTARGET_DIR/Bin:$OFRONT_LIB/Sym:$OFRONT_LIB

export OTARGET
export OFRONT
export OBERON

for module in "${MODULES[@]}"; do
  echo ""
  ./aria/OMake "$module"
done

rm -f ./*.c ./*.sym ./*.oh
rm -rf ./*.dSYM

for module in "${MODULE_NAMES[@]}"; do
  mv "$module" ./compiled/"$module"
done
