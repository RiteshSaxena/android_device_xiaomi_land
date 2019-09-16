# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.disable=1 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=false \
    persist.audio.dirac.speaker=true \
    persist.audio.fluence.speaker=false \
    persist.vendor.audio.fluence.speaker=false \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.speaker.prot.enable=false \
    persist.vendor.bt.enable.splita2dp=false \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    ro.af.client_heap_size_kbyte=7168 \
    ro.qc.sdk.audio.fluencetype=fluence \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=true \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=0 \
    vendor.audio.playback.mch.downsample=true \
    vendor.audio.pp.asphere.enabled=false \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio_hal.period_size=192 \
    vendor.voice.conc.fallbackpath=deep-buffer \
    vendor.voice.path.for.pcm.voip=true \
    vendor.voice.playback.conc.disabled=true \
    vendor.voice.record.conc.disabled=false \
    vendor.voice.voip.conc.disabled=true

# B service
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.vendor.qti.sys.fw.bservice_limit=5 \
    ro.vendor.qti.sys.fw.bservice_age=5000

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1 \
    vendor.qcom.bluetooth.soc=smd \
    ro.bluetooth.hfp.ver=1.7 \
    ro.qualcomm.bt.hci_transport=smd \
    persist.bluetooth.bluetooth_audio_hal.disabled=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.display.lmax=1280x720 \
    camera.display.umax=1920x1080 \
    camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
    persist.camera.gyro.android=1 \
    persist.camera.is_type=1 \
    vendor.vidc.enc.narrow.searchrange=1 \
    persist.vendor.qti.telephony.vt_cam_interface=1

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

# Coresight
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.coresight.config=stm-events

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=4m \
    dalvik.vm.heapmaxfree=8m

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=0 \
    debug.sf.latch_unsignaled=1 \
    debug.egl.hw=0 \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    debug.enable.sglscale=1 \
    sdm.debug.disable_skip_validate=1 \
    debug.sf.recomputecrop=0 \
    vendor.display.enable_default_color_mode=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.display.disable_skip_validate=1 \
    ro.opengles.version=196610 \
    ro.qualcomm.cabl=0 \
    ro.vendor.display.cabl=2 \
    ro.sf.lcd_density=280 \
    persist.debug.wfd.enable=1 \
    persist.hwc.enable_vds=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.transmitter=false
    
# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/config

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.location \
    ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.msm8956hw=0 \
    mm.enable.smoothstreaming=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    media.stagefright.audio.sink=280 \
    mm.enable.qcom_parser=17825791 \
    vendor.vidc.disable.split.mode=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.video.disable.ubwc=1 \
    media.settings.xml=/vendor/etc/media_profiles_V1_0.xml

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=4 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.qti.am.reschedule_service=true \
    ro.vendor.qti.core_ctl_min_cpu=2 \
    ro.vendor.qti.core_ctl_max_cpu=4 \
    ro.vendor.at_library=libqti-at.so \
    ro.vendor.gt_library=libqti-gt.so \
    vendor.perf.gestureflingboost.enable=true

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.vendor.data.mode=concurrent

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    persist.data.iwlan.enable=true \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=0 \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.aosp_usr_pref_sel=true \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.prefer_spn=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    ril.subscription.types=NV,RUIM \
    rild.libargs=-d/dev/smd0 \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.default_network=20,20 \
    vendor.service.qti.ims.enabled=1 \
    telephony.lteOnCdmaDevice=1

# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Tcp
PRODUCT_PROPERTY_OVERRIDES += \
    net.tcp.2g_init_rwnd=10

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config.extra=none

# Trim properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.use_trim_settings=true \
    ro.vendor.qti.sys.fw.empty_app_percent=50 \
    ro.vendor.qti.sys.fw.trim_empty_percent=100 \
    ro.vendor.qti.sys.fw.trim_cache_percent=100 \
    ro.vendor.qti.sys.fw.trim_enable_memory=2147483648

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
