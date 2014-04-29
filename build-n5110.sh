#!/bin/bash
MAKE="3"

## Set compiler location
echo Setting compiler location...
export ARCH=arm
export CROSS_COMPILE=/Users/austin/android/pac/prebuilts/gcc/darwin-x86/arm/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-

## export CROSS_COMPILE=/Users/austin/android/pac/prebuilts/gcc/linux-x86/arm/linaro-4.9/bin/arm-

## Build Draco kernel
make -j$MAKE ARCH=arm

# finished? get elapsed time
t2=$($DATE +%s)

tmin=$(( (t2-t1)/60 ))
tsec=$(( (t2-t1)%60 ))

echo -e ${bldgrn}"Total time elapsed:${txtrst} ${grn}$tmin minutes $tsec seconds"${txtrst}
