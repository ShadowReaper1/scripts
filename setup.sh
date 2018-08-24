#!/bin/bash
printf "Setting up things........."
mkdir raman
printf "Initializing Pie repo........."
cd raman
mkdir ccache
mkdir los16
cd los16
repo init -u git://github.com/LineageOS/android.git -b lineage-16.0 --depth=1
repo sync -c -f -j$(nproc --all) --no-clone-bundle --no-tags
clear
printf "Cloning Device Tree and Kernel"
git clone https://github.com/kernel-hut/android_kernel_asus_msm8916/ kernel/asus/msm8916 -b 8916-lineage
git clone https://github.com/audahadi/android_device_asus_Z010D device/asus/Z010D -b oreo
git clone https://github.com/audahadi/android_vendor_asus vendor/asus -b oreo
git clone https://github.com/audahadi/android_device_asus_qcom_common device/asus/msm8916-common -b oreo
printf "All done"
cd
cp buid.sh raman/los16/
printf "Ready........."
