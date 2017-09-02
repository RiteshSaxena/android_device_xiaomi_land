# IRQ balance
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.power.rc
