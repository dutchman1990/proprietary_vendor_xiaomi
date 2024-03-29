PRODUCT_COPY_FILES += \
    vendor/xiaomi/cancro/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    vendor/xiaomi/cancro/proprietary/lib/hw/camera.msm8974.so:system/lib/hw/camera.vendor.msm8974.so \
    vendor/xiaomi/cancro/proprietary/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    vendor/xiaomi/cancro/proprietary/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    vendor/xiaomi/cancro/proprietary/lib/libqomx_core.so:system/lib/libqomx_core.so \
    vendor/xiaomi/cancro/proprietary/lib/libRecoFace.so:system/lib/libRecoFace.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libarcsoft_beauty_shot.so:system/vendor/lib/libarcsoft_beauty_shot.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libchromaflash.so:system/vendor/lib/libchromaflash.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libFaceProc.so:system/vendor/lib/libFaceProc.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libjpegdhw.so:system/vendor/lib/libjpegdhw.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libjpegehw.so:system/vendor/lib/libjpegehw.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmmipl.so:system/vendor/lib/libmmipl.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmmjpeg.so:system/vendor/lib/libmmjpeg.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmmqjpeg_codec.so:system/vendor/lib/libmmqjpeg_codec.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/liboemcamera.so:system/vendor/lib/liboemcamera.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqomx_jpegdec.so:system/vendor/lib/libqomx_jpegdec.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqomx_jpegenc.so:system/vendor/lib/libqomx_jpegenc.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libt2tmanager.so:system/vendor/lib/libt2tmanager.so \
    vendor/xiaomi/cancro/proprietary/lib/libchromatix_imx135_liveshot.so:system/lib/libchromatix_imx135_liveshot.so \
    vendor/xiaomi/cancro/proprietary/lib/libchromatix_imx214_liveshot.so:system/lib/libchromatix_imx214_liveshot.so \
    vendor/xiaomi/cancro/proprietary/lib/libchromatix_imx215_liveshot.so:system/lib/libchromatix_imx215_liveshot.so \
    vendor/xiaomi/cancro/proprietary/lib/libchromatix_imx219_liveshot.so:system/lib/libchromatix_imx219_liveshot.so \
    vendor/xiaomi/cancro/proprietary/lib/libchromatix_imx224_liveshot.so:system/lib/libchromatix_imx224_liveshot.so \
    vendor/xiaomi/cancro/proprietary/lib/libchromatix_imx225_liveshot.so:system/lib/libchromatix_imx225_liveshot.so \
    vendor/xiaomi/cancro/proprietary/lib/libchromatix_imx226_liveshot.so:system/lib/libchromatix_imx226_liveshot.so \
    vendor/xiaomi/cancro/proprietary/lib/libchromatix_s5k3m2_liveshot.so:system/lib/libchromatix_s5k3m2_liveshot.so \
    vendor/xiaomi/cancro/proprietary/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    vendor/xiaomi/cancro/proprietary/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    vendor/xiaomi/cancro/proprietary/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw

# dirac audio
PRODUCT_COPY_FILES += \
    vendor/xiaomi/cancro/proprietary/lib/libDiracAPI_SHARED.so:system/lib/libDiracAPI_SHARED.so \
    vendor/xiaomi/cancro/proprietary/lib/soundfx/libdirac.so:system/lib/soundfx/libdirac.so

# chromatix
chromatix_files := $(shell ls vendor/xiaomi/cancro/proprietary/vendor/lib/libchromatix*)
PRODUCT_COPY_FILES += $(foreach file, $(chromatix_files), \
        $(file):system/vendor/lib/$(shell basename $(file)))

# mmcamera
libmmcamera_files := $(shell ls vendor/xiaomi/cancro/proprietary/vendor/lib/libmmcamera*)
PRODUCT_COPY_FILES += $(foreach file, $(libmmcamera_files), \
        $(file):system/vendor/lib/$(shell basename $(file)))

# mmcamera2
libmmcamera2_files := $(shell ls vendor/xiaomi/cancro/proprietary/vendor/lib/libmmcamera2*)
PRODUCT_COPY_FILES += $(foreach file, $(libmmcamera2_files), \
        $(file):system/vendor/lib/$(shell basename $(file)))

# actuator
libactuator_files := $(shell ls vendor/xiaomi/cancro/proprietary/vendor/lib/libactuator*)
PRODUCT_COPY_FILES += $(foreach file, $(libactuator_files), \
        $(file):system/vendor/lib/$(shell basename $(file)))

PRODUCT_COPY_FILES += \
    vendor/xiaomi/cancro/proprietary/vendor/firmware/keymaster/keymaster.b00:system/vendor/firmware/keymaster/keymaster.b00 \
    vendor/xiaomi/cancro/proprietary/vendor/firmware/keymaster/keymaster.b01:system/vendor/firmware/keymaster/keymaster.b01 \
    vendor/xiaomi/cancro/proprietary/vendor/firmware/keymaster/keymaster.b02:system/vendor/firmware/keymaster/keymaster.b02 \
    vendor/xiaomi/cancro/proprietary/vendor/firmware/keymaster/keymaster.b03:system/vendor/firmware/keymaster/keymaster.b03 \
    vendor/xiaomi/cancro/proprietary/vendor/firmware/keymaster/keymaster.mdt:system/vendor/firmware/keymaster/keymaster.mdt \
    vendor/xiaomi/cancro/proprietary/vendor/firmware/bcm2079x-b5_firmware.ncd:system/vendor/firmware/bcm2079x-b5_firmware.ncd \
    vendor/xiaomi/cancro/proprietary/vendor/firmware/bcm2079x-b5_pre_firmware.ncd:system/vendor/firmware/bcm2079x-b5_pre_firmware.ncd \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libdisp-aba.so:system/vendor/lib/libdisp-aba.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmm-abl.so:system/vendor/lib/libmm-abl.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmm-abl-oem.so:system/vendor/lib/libmm-abl-oem.so \
    vendor/xiaomi/cancro/proprietary/bin/btnvtool:system/bin/btnvtool \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libbtnv.so:system/vendor/lib/libbtnv.so \
    vendor/xiaomi/cancro/proprietary/bin/time_daemon:system/bin/time_daemon \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libTimeService.so:system/vendor/lib/libTimeService.so \
    vendor/xiaomi/cancro/proprietary/bin/adsprpcd:system/bin/adsprpcd \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libadsprpc.so:system/vendor/lib/libadsprpc.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libfastcvadsp_stub.so:system/vendor/lib/libfastcvadsp_stub.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libfastcvopt.so:system/vendor/lib/libfastcvopt.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libscve.so:system/vendor/lib/libscve.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libscve_stub.so:system/vendor/lib/libscve_stub.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libacdbrtac.so:system/vendor/lib/libacdbrtac.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libacdbmapper.so:system/vendor/lib/libacdbmapper.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libadiertac.so:system/vendor/lib/libadiertac.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libaudcal.so:system/vendor/lib/libaudcal.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libaudioalsa.so:system/vendor/lib/libaudioalsa.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/soundfx/libqcbassboost.so:system/vendor/lib/soundfx/libqcbassboost.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/soundfx/libqcreverb.so:system/vendor/lib/soundfx/libqcreverb.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/soundfx/libqcvirt.so:system/vendor/lib/soundfx/libqcvirt.so \
    vendor/xiaomi/cancro/proprietary/bin/quipc_main:system/bin/quipc_main \
    vendor/xiaomi/cancro/proprietary/bin/quipc_igsn:system/bin/quipc_igsn \
    vendor/xiaomi/cancro/proprietary/vendor/lib/hw/flp.default.so:system/vendor/lib/hw/flp.default.so \
    vendor/xiaomi/cancro/proprietary/lib/hw/activity_recognition.msm8974.so:system/lib/hw/activity_recognition.msm8974.so \
    vendor/xiaomi/cancro/proprietary/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    vendor/xiaomi/cancro/proprietary/lib/libloc_ds_api.so:system/lib/libloc_ds_api.so \
    vendor/xiaomi/cancro/proprietary/lib/libgps.utils.so:system/lib/libgps.utils.so \
    vendor/xiaomi/cancro/proprietary/lib/libloc_core.so:system/lib/libloc_core.so \
    vendor/xiaomi/cancro/proprietary/lib/libloc_eng.so:system/lib/libloc_eng.so \
    vendor/xiaomi/cancro/proprietary/lib/hw/gps.msm8974.so:system/lib/hw/gps.msm8974.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libgeofence.so:system/vendor/lib/libgeofence.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libizat_core.so:system/vendor/lib/libizat_core.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/liblbs_core.so:system/vendor/lib/liblbs_core.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/liblocationservice.so:system/vendor/lib/liblocationservice.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libquipc_os_api.so:system/vendor/lib/libquipc_os_api.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libquipc_ulp_adapter.so:system/vendor/lib/libquipc_ulp_adapter.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libulp2.so:system/vendor/lib/libulp2.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libI420colorconvert.so:system/vendor/lib/libI420colorconvert.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmmosal.so:system/vendor/lib/libmmosal.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmm-color-convertor.so:system/vendor/lib/libmm-color-convertor.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libDivxDrm.so:system/vendor/lib/libDivxDrm.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libSHIMDivxDrm.so:system/vendor/lib/libSHIMDivxDrm.so \
    vendor/xiaomi/cancro/proprietary/bin/irsc_util:system/bin/irsc_util \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libdiag.so:system/vendor/lib/libdiag.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libconfigdb.so:system/vendor/lib/libconfigdb.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libperipheral_client.so:system/vendor/lib/libperipheral_client.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libdsi_netctrl.so:system/vendor/lib/libdsi_netctrl.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libdsutils.so:system/vendor/lib/libdsutils.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libidl.so:system/vendor/lib/libidl.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqcci_legacy.so:system/vendor/lib/libqcci_legacy.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqdi.so:system/vendor/lib/libqdi.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqdp.so:system/vendor/lib/libqdp.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqmi.so:system/vendor/lib/libqmi.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqmi_client_qmux.so:system/vendor/lib/libqmi_client_qmux.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqmi_csvt_srvc.so:system/vendor/lib/libqmi_csvt_srvc.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libqmiservices.so:system/vendor/lib/libqmiservices.so \
    vendor/xiaomi/cancro/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/xiaomi/cancro/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/xiaomi/cancro/proprietary/bin/radish:system/bin/radish \
    vendor/xiaomi/cancro/proprietary/bin/rfs_access:system/bin/rfs_access \
    vendor/xiaomi/cancro/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    vendor/xiaomi/cancro/proprietary/etc/permissions/qcnvitems.xml:system/etc/permissions/qcnvitems.xml \
    vendor/xiaomi/cancro/proprietary/etc/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
    vendor/xiaomi/cancro/proprietary/framework/qcnvitems.jar:system/framework/qcnvitems.jar \
    vendor/xiaomi/cancro/proprietary/framework/qcrilhook.jar:system/framework/qcrilhook.jar \
    vendor/xiaomi/cancro/proprietary/framework/qti-telephony-common.jar:system/framework/qti-telephony-common.jar \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libasn1cper.so:system/vendor/lib/libasn1cper.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libasn1crt.so:system/vendor/lib/libasn1crt.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libasn1crtx.so:system/vendor/lib/libasn1crtx.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libcneapiclient.so:system/vendor/lib/libcneapiclient.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libnetmgr.so:system/vendor/lib/libnetmgr.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libril-qc-qmi-1.so:system/vendor/lib/libril-qc-qmi-1.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libril-qcril-hook-oem.so:system/vendor/lib/libril-qcril-hook-oem.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libsmemlog.so:system/vendor/lib/libsmemlog.so \
    vendor/xiaomi/cancro/proprietary/bin/sensors.qcom:system/bin/sensors.qcom \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libAKM8963.so:system/vendor/lib/libAKM8963.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/hw/sensors.msm8974.so:system/vendor/lib/hw/sensors.msm8974.so \
    vendor/xiaomi/cancro/proprietary/lib/hw/consumerir.msm8974.so:system/lib/hw/consumerir.msm8974.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libsensor1.so:system/vendor/lib/libsensor1.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libsensor_reg.so:system/vendor/lib/libsensor_reg.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libsensor_test.so:system/vendor/lib/libsensor_test.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libsensor_user_cal.so:system/vendor/lib/libsensor_user_cal.so \
    vendor/xiaomi/cancro/proprietary/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    vendor/xiaomi/cancro/proprietary/bin/hvdcp:system/bin/hvdcp \
    vendor/xiaomi/cancro/proprietary/bin/charger_monitor:system/bin/charger_monitor \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmm-hdcpmgr.so:system/vendor/lib/libmm-hdcpmgr.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libmmQSM.so:system/vendor/lib/libmmQSM.so \
    vendor/xiaomi/cancro/proprietary/etc/firmware/venus.b00:system/etc/firmware/venus.b00 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/venus.b01:system/etc/firmware/venus.b01 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/venus.b02:system/etc/firmware/venus.b02 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/venus.b03:system/etc/firmware/venus.b03 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/venus.b04:system/etc/firmware/venus.b04 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/venus.mbn:system/etc/firmware/venus.mbn \
    vendor/xiaomi/cancro/proprietary/etc/firmware/venus.mdt:system/etc/firmware/venus.mdt \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.b00:system/etc/firmware/wcnss.b00 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.b01:system/etc/firmware/wcnss.b01 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.b02:system/etc/firmware/wcnss.b02 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.b04:system/etc/firmware/wcnss.b04 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.b06:system/etc/firmware/wcnss.b06 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.b07:system/etc/firmware/wcnss.b07 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.b08:system/etc/firmware/wcnss.b08 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.b09:system/etc/firmware/wcnss.b09 \
    vendor/xiaomi/cancro/proprietary/etc/firmware/wcnss.mdt:system/etc/firmware/wcnss.mdt \
    vendor/xiaomi/cancro/proprietary/bin/qseecomd:system/bin/qseecomd \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libNimsWrap.so:system/vendor/lib/libNimsWrap.so \
    vendor/xiaomi/cancro/proprietary/lib/libdrmdiag.so:system/lib/libdrmdiag.so \
    vendor/xiaomi/cancro/proprietary/lib/libdrmfs.so:system/lib/libdrmfs.so \
    vendor/xiaomi/cancro/proprietary/lib/libdrmtime.so:system/lib/libdrmtime.so \
    vendor/xiaomi/cancro/proprietary/lib/libQSEEComAPI.so:system/lib/libQSEEComAPI.so \
    vendor/xiaomi/cancro/proprietary/lib/librpmb.so:system/lib/librpmb.so \
    vendor/xiaomi/cancro/proprietary/lib/libssd.so:system/lib/libssd.so \
    vendor/xiaomi/cancro/proprietary/lib/drm/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libdrmdecrypt.so:system/vendor/lib/libdrmdecrypt.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/liboemcrypto.so:system/vendor/lib/liboemcrypto.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libWVphoneAPI.so:system/vendor/lib/libWVphoneAPI.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/mediadrm/libdrmclearkeyplugin.so:system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so \
    vendor/xiaomi/cancro/proprietary/bin/lowi-server:system/bin/lowi-server \
    vendor/xiaomi/cancro/proprietary/bin/xtwifi-client:system/bin/xtwifi-client \
    vendor/xiaomi/cancro/proprietary/bin/xtwifi-inet-agent:system/bin/xtwifi-inet-agent \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libsystem_health_mon.so:system/vendor/lib/libsystem_health_mon.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libwifiscanner.so:system/vendor/lib/libwifiscanner.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libxtadapter.so:system/vendor/lib/libxtadapter.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libxtwifi_ulp_adaptor.so:system/vendor/lib/libxtwifi_ulp_adaptor.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libxtwifi_zpp_adaptor.so:system/vendor/lib/libxtwifi_zpp_adaptor.so \
    vendor/xiaomi/cancro/proprietary/lib/libstm-log.so:system/lib/libstm-log.so \
    vendor/xiaomi/cancro/proprietary/etc/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    vendor/xiaomi/cancro/proprietary/etc/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    vendor/xiaomi/cancro/proprietary/etc/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    vendor/xiaomi/cancro/proprietary/bin/qosmgr:system/bin/qosmgr \
    vendor/xiaomi/cancro/proprietary/vendor/lib/lib-rtpcommon.so:system/vendor/lib/lib-rtpcommon.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/lib-rtpsl.so:system/vendor/lib/lib-rtpsl.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/lib-rtpcore.so:system/vendor/lib/lib-rtpcore.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/lib-dplmedia.so:system/vendor/lib/lib-dplmedia.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/lib-rtpdaemoninterface.so:system/vendor/lib/lib-rtpdaemoninterface.so \
    vendor/xiaomi/cancro/proprietary/bin/fm_qsoc_patches:system/bin/fm_qsoc_patches \
    vendor/xiaomi/cancro/proprietary/bin/wcnss_service:system/bin/wcnss_service \
    vendor/xiaomi/cancro/proprietary/bin/wcnss_filter:system/bin/wcnss_filter \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libxml.so:system/vendor/lib/libxml.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/rfsa/adsp/libapps_mem_heap.so:system/lib/rfsa/adsp/libapps_mem_heap.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/rfsa/adsp/libdspCV_skel.so:system/lib/rfsa/adsp/libdspCV_skel.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/rfsa/adsp/libfastcvadsp_skel.so:system/lib/rfsa/adsp/libfastcvadsp_skel.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/rfsa/adsp/libfastcvadsp.so:system/lib/rfsa/adsp/libfastcvadsp.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/rfsa/adsp/libscveT2T_skel.so:system/lib/rfsa/adsp/libscveT2T_skel.so \
    vendor/xiaomi/cancro/proprietary/vendor/lib/libsrsprocessing.so:system/vendor/lib/libsrsprocessing.so
