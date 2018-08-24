#!/bin/bash
export USE_CCACHE=1
export CCACHE_DIR=~/raman/ccache
./prebuilts/misc/linux-x86/ccache/ccache -M 50G

. build/envsetup.sh
lunch lineage_Z010D-userdebug
make bacon -j$(nproc --all) | tee log.txt
