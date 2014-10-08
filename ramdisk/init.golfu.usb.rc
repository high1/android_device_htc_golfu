# Used to disable USB when switching states
on property:sys.usb.config=none
    exec /system/bin/netcfg usb0 down
    stop adbd
    write /sys/class/android_usb/android0/enable 0
    write /sys/class/android_usb/android0/bDeviceClass 0
    setprop sys.usb.state ${sys.usb.config}

on property:sys.usb.config=adb
    write /sys/class/android_usb/android0/enable 0
    write /sys/devices/platform/android_usb/usb_function_switch 2
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    start adbd
    setprop sys.usb.state ${sys.usb.config}

on property:sys.usb.config=mass_storage,adb
    write /sys/class/android_usb/android0/enable 0
    write /sys/devices/platform/android_usb/usb_function_switch 3
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    start adbd
    setprop sys.usb.state ${sys.usb.config}

on property:sys.usb.config=mass_storage
    stop adbd
    write /sys/class/android_usb/android0/enable 0
    write /sys/devices/platform/android_usb/usb_function_switch 1
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    setprop sys.usb.state ${sys.usb.config}

on property:sys.usb.config=rndis
    stop adbd
    write /sys/class/android_usb/android0/enable 0
    exec /system/bin/netcfg usb0 up
    write /sys/devices/platform/android_usb/usb_function_switch 4
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    setprop sys.usb.state ${sys.usb.config}

on property:sys.usb.config=rndis,adb
    write /sys/class/android_usb/android0/enable 0
    exec /system/bin/netcfg usb0 up
    write /sys/devices/platform/android_usb/usb_function_switch 6
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    start adbd
    setprop sys.usb.state ${sys.usb.config}

on property:sys.usb.config=mtp
    stop adbd
    write /sys/class/android_usb/android0/enable 0
    write /sys/devices/platform/android_usb/usb_function_switch 128
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    setprop sys.usb.state ${sys.usb.config}

on property:sys.usb.config=mtp,adb
    write /sys/class/android_usb/android0/enable 0
    write /sys/devices/platform/android_usb/usb_function_switch 130
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    start adbd
    setprop sys.usb.state ${sys.usb.config}


on property:sys.usb.config=ptp
    stop adbd
    write /sys/class/android_usb/android0/enable 0
    write /sys/devices/platform/android_usb/usb_function_switch 128
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    setprop sys.usb.state ${sys.usb.config}

on property:sys.usb.config=ptp,adb
    write /sys/class/android_usb/android0/enable 0
    write /sys/devices/platform/android_usb/usb_function_switch 130
    write /sys/class/android_usb/android0/functions ${sys.usb.config}
    write /sys/class/android_usb/android0/enable 1
    start adbd
    setprop sys.usb.state ${sys.usb.config}

