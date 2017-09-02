# Camera
PRODUCT_PACKAGES += \
    camera.$(TARGET_BOARD_PLATFORM) \
    libmm-qcamera

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    camera.hal1.packagelist=camera.hal1.packagelist=com.skype.raider,com.google.android.talk\
    persist.camera.isp.clock.optmz=0 \
    vidc.enc.dcvs.extra-buff-count=2 \
    camera.display.umax=1920x1080 \
    camera.display.lmax=1280x720 \
    media.camera.ts.monotonic=1 \
    persist.camera.imglib.cac3=2 \
    persist.camera.gyro.disable=0 \
    camera.lowpower.record.enable=1 \
    persist.camera.is_type=1
