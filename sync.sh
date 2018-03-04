#!/bin/bash

printf "Which flavour of android do you want to build?\n"
printf "1:7.x\n2:8.0\n3:8.x\n"
read flavour
case $flavour in
	1)
	   printf "Syncing all the necessary trees for building nougat.\n"
	   git clone https://github.com/ShadowReaper1/android_kernel_asus_msm8916 kernel/asus/msm8916 -b Reaper
	   git clone https://github.com/ShadowReaper1/android_device_asus_qcom_common device/asus/msm8916-common -b N
	   git clone https://github.com/ShadowReaper1/android_vendor_asus vendor/asus -b N
	   git clone https://github.com/ShadowReaper1/android_device_asus_Z010D device/asus/Z010D -b N
	   printf "\nAll the necessary trees are synced\nHappy building ;D."
	   ;;
	2)
           printf "Syncing all the necessary trees for building Oreo 8.0.\n"
           git clone https://github.com/ShadowReaper1/android_kernel_asus_msm8916 kernel/asus/msm8916 -b Reaper
           git clone https://github.com/ShadowReaper1/android_device_asus_qcom_common device/asus/msm8916-common -b lineage-15.0
           git clone https://github.com/ShadowReaper1/android_vendor_asus vendor/asus -b ow1
           git clone https://github.com/ShadowReaper1/android_device_asus_Z010D device/asus/Z010D -b lineage-15.0
           printf "\nAll the necessary trees are synced\nHappy building ;D."
           ;;
        3)
           printf "Syncing all the necessary trees for building Oreo 8.x\n"
           git clone https://github.com/ShadowReaper1/android_kernel_asus_msm8916 kernel/asus/msm8916 -b Reaper
           git clone https://github.com/ShadowReaper1/android_device_asus_qcom_common device/asus/msm8916-common -b lineage-15.1
           git clone https://github.com/ShadowReaper1/android_vendor_asus vendor/asus -b ow1
           git clone https://github.com/ShadowReaper1/android_device_asus_Z010D device/asus/Z010D -b lineage-15.1
           printf "\nAll the necessary trees are synced\nHappy building ;D."
	   ;;
	*)
	   printf "\nUh oh seems like you ran into an error, do me a favour figure it out and fix it."
	   ;;
esac

