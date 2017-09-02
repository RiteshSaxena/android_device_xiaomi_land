# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false
