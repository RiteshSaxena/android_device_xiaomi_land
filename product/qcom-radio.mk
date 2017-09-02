# IRSC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sec_config:system/etc/sec_config

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    rild.libargs=-d /dev/smd0 \
    persist.rild.nitz_plmn= \
    persist.rild.nitz_long_ons_0= \
    persist.rild.nitz_long_ons_1= \
    persist.rild.nitz_long_ons_2= \
    persist.rild.nitz_long_ons_3= \
    persist.rild.nitz_short_ons_0= \
    persist.rild.nitz_short_ons_1= \
    persist.rild.nitz_short_ons_2= \
    persist.rild.nitz_short_ons_3= \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1 \
    ro.telephony.ril_class=MidoRIL \
    ro.telephony.default_network=22,20 \
    ro.telephony.call_ring.multiple=false \
    persist.radio.multisim.config=dsds \
    persist.radio.sib16_support=1 \
    persist.radio.custom_ecc=1 \
    persist.radio.calls.on.ims=0 \
    persist.radio.jbims=0 \
    persist.radio.csvt.enabled=false \
    persist.radio.rat_on=combine \
    persist.radio.mt_sms_ack=20 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.radio.videopause.mode=1 \
    persist.data.iwlan.enable=true \
    persist.dbg.wfc_avail_ovr=0 \
    persist.radio.sw_mbn_update=0 \
    persist.radio.hw_mbn_update=0 \
    service.qti.ims.enabled=1 \
    telephony.lteOnCdmaDevice=1

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2
