#!/bin/bash

# basic build script

export ARCH=arm
export SUBARCH=arm

# Toolchain
export CROSS_COMPILE='/home/chanz22/toolchains/Linaro_4.9.4/GCC/bin/arm-cortex_a9-linux-gnueabihf-'

# make defconfig
make cyanogenmod_i9082_defconfig

echo "configuration written for the compiler"

# compile kernel
make CONFIG_DEBUG_SECTION_MISMATCH=y -j12 # make sure to set the right number for your cpu cores including threads

echo "compiling kernel"

echo ""

echo "done. you can find your zImage in arch/arm/boot/"

echo ""

echo "goodbye!"

