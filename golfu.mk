#Full base telephony
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

#Languages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/htc/golfu/golfu-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/golfu/overlay
    
# Graphics 
PRODUCT_PACKAGES += \
    libgenlock \
    gralloc.msm7x27a \
    copybit.msm7x27a \
    hwcomposer.msm7x27a \
    memtrack.msm7x27a \
    libqdMetaData 

# Video decoding
PRODUCT_PACKAGES += \
    libOmxCore \
    libstagefrighthw \
    libdashplayer

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
    gps.msm7x27a
    
# Lights
PRODUCT_PACKAGES += \
    lights.msm7x27a

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
#PRODUCT_PACKAGES += \
#    FM2 \
#    libqcomfm_jni \
#    qcom.fmradio

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    dexpreopt \
    librpc

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs \
    mkfs.f2fs \
    fsck.f2fs \
    make_f2fs \
    mkf2fsuserimg.sh ls -

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/htc/golfu/ramdisk,root)

RECOVERY_VARIANT := omni
# Recovery
ifeq ($(RECOVERY_VARIANT),omni)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/htc/golfu/prebuilt/recovery/omni,recovery/root)
else
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/htc/golfu/prebuilt/recovery/cm,recovery/root)
endif
    
# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/htc/golfu/prebuilt/system,system)

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

#Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

#Disable mobile data on first boot, low ram device flag
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=true \
    ro.com.android.mobiledata=false \
    ro.com.android.dataroaming=false
    
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0