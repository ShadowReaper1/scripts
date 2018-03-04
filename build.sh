#!/bin/bash
export USE_CCACHE=1
export CCACHE_DIR=~/shadow/ccache
./prebuilts/misc/linux-x86/ccache/ccache -M 50G

. build/envsetup.sh
lunch aosip_Z010D-userdebug
rm -rf out
make bacon -j16 | tee log.txt
