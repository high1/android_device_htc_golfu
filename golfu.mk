#Full base telephony
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#Languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/htc/golfu/golfu-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/golfu/overlay

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libdashplayer
    
# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    memtrack.msm7x27a \
    libgenlock \
    liboverlay \
    libtilerenderer \
    libqdMetaData

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio.usb.default \
    libaudioutils \
    libaudio-resampler

 # GPS
PRODUCT_PACKAGES += \
    gps.golfu
    
# Lights
PRODUCT_PACKAGES += \
    lights.golfu

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27a
    
#Health HAL
PRODUCT_PACKAGES += \
    libhealthd.msm7x27a
   
# Camera
PRODUCT_PACKAGES += \
    libsurfaceflinger_client
     
# NFC
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Bluetooth
PRODUCT_PACKAGES += \
    btmac 

#Wifi
PRODUCT_PACKAGES += \
    libnetcmdiface

# FM Radio
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    dexpreopt \
    librpc
    
# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/htc/golfu/ramdisk,root)

# Recovery
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/htc/golfu/prebuilt/recovery,recovery/root)
    
# Prebuilt
#PRODUCT_COPY_FILES += \
#    $(call find-copy-subdir-files,*,device/htc/golfu/prebuilt/system,system)

# Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
    
# Camera
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/hw/camera.msm7x27a.so:system/lib/hw/camera.msm7x27a.so \
    device/htc/golfu/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    device/htc/golfu/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    device/htc/golfu/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/htc/golfu/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
    device/htc/golfu/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
    device/htc/golfu/proprietary/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
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
    device/htc/golfu/proprietary/omx/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/htc/golfu/proprietary/omx/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/htc/golfu/proprietary/omx/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/htc/golfu/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    device/htc/golfu/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
    device/htc/golfu/proprietary/omx/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/htc/golfu/proprietary/omx/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/htc/golfu/proprietary/omx/libOmxAc3HwDec.so:system/lib/libOmxAc3HwDec.so \
    device/htc/golfu/proprietary/omx/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    device/htc/golfu/proprietary/omx/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    device/htc/golfu/proprietary/omx/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/htc/golfu/proprietary/omx/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    device/htc/golfu/proprietary/omx/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/htc/golfu/proprietary/omx/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    device/htc/golfu/proprietary/omx/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/htc/golfu/proprietary/omx/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \
    device/htc/golfu/proprietary/omx/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/htc/golfu/proprietary/omx/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
    device/htc/golfu/proprietary/omx/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/htc/golfu/proprietary/omx/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \
    device/htc/golfu/proprietary/omx/libOmxWmaDec.so:system/lib/libOmxWmaDec.so

#Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

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
    device/htc/golfu/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/golfu/proprietary/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Audio
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/golfu/proprietary/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/golfu/proprietary/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/golfu/proprietary/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/golfu/proprietary/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/golfu/proprietary/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/golfu/proprietary/etc/AudioFilter_HP.csv:system/etc/AudioFilter_HP.csv \
    device/htc/golfu/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/htc/golfu/proprietary/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
    device/htc/golfu/proprietary/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# Sensors
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/hw/sensors.golfu.so:system/lib/hw/sensors.golfu.so

# 3D
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/golfu/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/htc/golfu/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/golfu/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/htc/golfu/proprietary/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/htc/golfu/proprietary/lib/libllvm-arm.so:system/vendor/lib/libllvm-arm.so \
    device/htc/golfu/proprietary/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    device/htc/golfu/proprietary/lib/libOpenVG.so:system/vendor/lib/libOpenVG.so \
    device/htc/golfu/proprietary/lib/libsc-a2xx.so:system/vendor/lib/libsc-a2xx.so \
    device/htc/golfu/proprietary/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/htc/golfu/proprietary/lib/libc2d2_z180.so:system/vendor/lib/libc2d2_z180.so \
    device/htc/golfu/proprietary/lib/libCB.so:system/vendor/lib/libCB.so \
    device/htc/golfu/proprietary/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/htc/golfu/proprietary/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    device/htc/golfu/proprietary/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/htc/golfu/proprietary/lib/egl/libGLESv2S3D_adreno.so:system/vendor/lib/egl/libGLESv2S3D_adreno.so \
    device/htc/golfu/proprietary/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so

# RIL
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    device/htc/golfu/proprietary/bin/qmuxd:system/bin/qmuxd \
    device/htc/golfu/proprietary/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/golfu/proprietary/lib/libqc-opt.so:system/lib/libqc-opt.so

#Lib for qmuxd
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    device/htc/golfu/proprietary/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
    device/htc/golfu/proprietary/lib/libdsutils.so:system/lib/libdsutils.so \
    device/htc/golfu/proprietary/lib/libnv.so:system/lib/libnv.so \
    device/htc/golfu/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/htc/golfu/proprietary/lib/libidl.so:system/lib/libidl.so \
    device/htc/golfu/proprietary/lib/libqdp.so:system/lib/libqdp.so \
    device/htc/golfu/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    device/htc/golfu/proprietary/lib/libqmiservices.so:system/lib/libqmiservices.so \

# Bluetooth
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/liboncrpc.so:obj/lib/liboncrpc.so \
    device/htc/golfu/proprietary/lib/libnv.so:obj/lib/libnv.so

# NFC
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/lib/hw/nfc.golfu.so:system/lib/hw/nfc.golfu.so \
    device/htc/golfu/proprietary/lib/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \
    device/htc/golfu/prebuilt/nfc/nfcee_access.xml:system/etc/nfcee_access.xml

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
    device/htc/golfu/proprietary/usr/icu/icudt46l.dat:system/usr/icu/icudt46l.dat \
    device/htc/golfu/proprietary/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/golfu/proprietary/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc
    #device/htc/golfu/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl 

# Proprietary Binaries
PRODUCT_COPY_FILES += \
    device/htc/golfu/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/htc/golfu/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/htc/golfu/proprietary/bin/fm_qsoc_patches:system/bin/fm_qsoc_patches 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=12 \
    ro.config.max_starting_bg=6 \
    ro.com.android.mobiledata=false \
    ro.com.android.dataroaming=false

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0