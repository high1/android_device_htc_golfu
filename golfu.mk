# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# proprietary side of the device
# Inherit from those products. Most specific first

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/golfu/overlay

# Video decoding
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libstagefrighthw \
    libOmxCore \
    libI420colorconvert

# Graphics 
PRODUCT_PACKAGES += \
    libgenlock \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils \
    audio.usb.default

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    lights.golfu \
    sensors.msm7x27a \
    gps.golfu \
    librpc \
    power.msm7x27a
   
# Camera
PRODUCT_PACKAGES += \
    camera.default \
    libsurfaceflinger_client

# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras \

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    dexpreopt

# Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Init
PRODUCT_COPY_FILES += \
    device/htc/golfu/fstab.golfu:root/fstab.golfu \
    device/htc/golfu/prebuilt/root/init:root/init \
    device/htc/golfu/prebuilt/root/init.rc:root/init.rc \
    device/htc/golfu/prebuilt/root/init.golfu.rc:root/init.golfu.rc \
    device/htc/golfu/prebuilt/root/init.usb.rc:root/init.usb.rc \
    device/htc/golfu/prebuilt/root/ueventd.golfu.rc:root/ueventd.golfu.rc \
    device/htc/golfu/prebuilt/root/ueventd.rc:root/ueventd.rc \
    device/htc/golfu/prebuilt/root/init.cm.rc:root/init.cm.rc \
    device/htc/golfu/prebuilt/root/init.trace.rc:root/init.trace.rc \
    device/htc/golfu/prebuilt/root/logo.rle:root/logo.rle

# Camera
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/hw/camera.default.so:system/lib/hw/camera.default.so \
    device/htc/golfu/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/htc/golfu/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    device/htc/golfu/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/htc/golfu/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
    device/htc/golfu/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
    device/htc/golfu/proprietary/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
    device/htc/golfu/proprietary/lib/libchromatix_mt9t013_default_video.so:system/lib/libchromatix_mt9t013_default_video.so \
    device/htc/golfu/proprietary/lib/libchromatix_mt9t013_preview.so:system/lib/libchromatix_mt9t013_preview.so \
    device/htc/golfu/proprietary/lib/libchromatix_s5k4e1_default_video.so:system/lib/libchromatix_s5k4e1_default_video.so \
    device/htc/golfu/proprietary/lib/libchromatix_s5k4e1_preview.so:system/lib/libchromatix_s5k4e1_preview.so \
    device/htc/golfu/proprietary/lib/libchromatix_s5k4e1_ar.so:system/lib/libchromatix_s5k4e1_ar.so \
    device/htc/golfu/proprietary/bin/awb_camera:system/bin/awb_camera \
    device/htc/golfu/proprietary/bin/lsc_camera:system/bin/lsc_camera \
    device/htc/golfu/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/htc/golfu/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/golfu/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml

# OMX
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/htc/golfu/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    device/htc/golfu/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    device/htc/golfu/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/htc/golfu/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/htc/golfu/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/htc/golfu/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    device/htc/golfu/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Releasetools
PRODUCT_COPY_FILES += \
     device/htc/golfu/releasetools/extras.sh:system/bin/extras.sh

# Vold
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/vold.fstab:system/etc/vold.fstab

# DRM Plugin
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/drm/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/firmware/ath6k:system/etc/firmware/ath6k \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003:system/etc/firmware/ath6k/AR6003 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1:system/etc/firmware/ath6k/AR6003/hw2.1.1 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin1:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin1 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin2:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin2 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin3:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin3 \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-3.bin \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin \
    device/htc/golfu/proprietary/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin \
    device/htc/golfu/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Audio
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/golfu/proprietary/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/golfu/proprietary/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/golfu/proprietary/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/golfu/proprietary/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/golfu/proprietary/etc/AudioFilter_HP.csv:system/etc/AudioFilter_HP.csv \
    device/htc/golfu/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/htc/golfu/proprietary/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so

# Sensors
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/hw/sensors.golfu.so:system/lib/hw/sensors.golfu.so \

# 3D
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/golfu/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/htc/golfu/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/golfu/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/htc/golfu/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/golfu/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/golfu/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/golfu/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
    device/htc/golfu/proprietary/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/htc/golfu/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/golfu/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/golfu/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so

# RIL
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/golfu/proprietary/lib/libqc-opt.so:system/lib/libqc-opt.so

# NFC firmware
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/golfu/proprietary/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg

# Keylayouts, ICU & IDCs
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/usr/keylayout/golfu-keypad.kl:system/usr/keylayout/golfu-keypad.kl \
    device/htc/golfu/proprietary/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/golfu/proprietary/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/golfu/proprietary/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/golfu/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/golfu/proprietary/usr/icu/icudt46l.dat:system/usr/icu/icudt46l.dat \
    device/htc/golfu/proprietary/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/golfu/proprietary/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc

# Prebuilt Modules
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/modules/ath6kl_sdio.ko:system/lib/modules/ath6kl_sdio.ko \
    device/htc/golfu/proprietary/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/htc/golfu/proprietary/lib/modules/compat.ko:system/lib/modules/compat.ko
#    device/htc/golfu/proprietary/lib/modules/kineto_gan.ko:system/lib/modules/kineto_gan.ko

# Proprietary Binaries
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf \
    device/htc/golfu/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/htc/golfu/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/htc/golfu/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/htc/golfu/proprietary/bin/fm_qsoc_patches:system/bin/fm_qsoc_patches \
    device/htc/golfu/proprietary/bin/udhcpd:system/bin/udhcpd \
    device/htc/golfu/proprietary/bin/clockd:system/bin/clockd \
    device/htc/golfu/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/htc/golfu/proprietary/bin/hciattach:system/bin/hciattach \
    device/htc/golfu/proprietary/bin/netsharing:system/bin/netsharing \
    device/htc/golfu/proprietary/bin/rild:system/bin/rild \
    device/htc/golfu/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    device/htc/golfu/proprietary/bin/sdptool:system/bin/sdptool \
    device/htc/golfu/proprietary/bin/zcb:system/bin/zcb \
    device/htc/golfu/proprietary/bin/zchgd:system/bin/zchgd \
    device/htc/golfu/proprietary/bin/zimmer:system/bin/zimmer \
    device/htc/golfu/proprietary/bin/ath6kl-fwlog-record:system/bin/ath6kl-fwlog-record \
    device/htc/golfu/proprietary/bin/athtestcmd:system/bin/athtestcmd \
    device/htc/golfu/proprietary/xbin/wireless_modem:system/xbin/wireless_modem 
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=4.0_r2 \
    dalvik.vm.lockprof.threshold=500 \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    persist.sys.use_dithering=1 \
    persist.sys.usb.config=mass_storage,adb \
    ro.vold.umsdirtyratio=20

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
