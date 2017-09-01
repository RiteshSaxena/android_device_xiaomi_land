# GPS
PRODUCT_BOOT_JARS += \
    com.qti.location.sdk

PRODUCT_PACKAGES += \
    gps.msm8937 \
    libcurl \
    libgnsspps

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(DEVICE_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(DEVICE_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(DEVICE_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(DEVICE_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(DEVICE_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.location \
    ro.gps.agps_provider=1
