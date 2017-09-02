# IRQ balance
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.power.rc

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.am.reschedule_service=true \
    persist.timed.enable=true \
    ro.core_ctl_min_cpu=2 \
    ro.core_ctl_max_cpu=4 \
    ro.vendor.extension_library=libqti-perfd-client.so
