#!/bin/bash -e

BUILDDIR=build
CFGCMD=-c
GENCMJ=-g

if [ "$1" = "$CFGCMD" ]; then
  echo "  Generating .config from orangepi-4-rk3399_defconfig"
  make CROSS_COMPILE=aarch64-linux-gnu- O=$BUILDDIR orangepi-4-rk3399_defconfig
  exit
fi

if [ "$1" = "$GENCMJ" ]; then
  echo "  Generating compile_commands.json"
  bear -o build/compile_commands.json make CROSS_COMPILE=aarch64-linux-gnu- O=$BUILDDIR
  exit
fi

make CROSS_COMPILE=aarch64-linux-gnu- O=$BUILDDIR $1 $2 $3 $4 $5 $6 $7 $8