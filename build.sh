#!/bin/bash

export PATH=$(pwd)/../../../prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin:$PATH

export ARCH=arm

export CROSS_COMPILE=arm-eabi-

export TARGET_PREBUILT_KERNEL=$(pwd)/arch/arm/boot/zImage-dtb

make mako_defconfig

make -j8
