#!/bin/sh
# Extract prebuilt libraries (from a working device) needed for the U8150

mkdir -p ../../../vendor/huawei/ideos/proprietary

DIRS="
bin
lib/hw
"

for DIR in $DIRS; do
	mkdir -p ../../../vendor/huawei/ideos/proprietary/$DIR
done

FILES="
bin/akmd2
bin/hci_qcomm_init
bin/modempre
bin/oem_rpc_svc
bin/qmuxd
bin/rild

lib/hw/gralloc.msm7k.so
lib/hw/lights.msm7k.so
lib/hw/sensors.default.so

lib/libaudioeq.so
lib/libcamera.so
lib/libcm.so
lib/libdiag.so
lib/libdll.so
lib/libdsm.so
lib/libdss.so
lib/libgsdi_exp.so
lib/libgstk_exp.so
lib/libhwrpc.so
lib/libmm-adspsvc.so
lib/libmmgsdilib.so
lib/libmmipl.so
lib/libmmjpeg.so
lib/libmm-omxcore.so
lib/libmmprocess.so
lib/libnv.so
lib/liboem_rapi.so
lib/libOmxCore.so
lib/libOmxH264Dec.so
lib/libOmxMpeg4Dec.so
lib/libOmxVidEnc.so
lib/libOmxWmvDec.so
lib/liboncrpc.so
lib/libpbmlib.so
lib/libqcamera.so
lib/libqmi.so
lib/libqueue.so
lib/libril-qc-1.so
lib/libril-qcril-hook-oem.so
lib/libwms.so
lib/libwmsts.so
"

for FILE in $FILES; do
    adb pull system/$FILE ../../../vendor/huawei/ideos/proprietary/$FILE
done

chmod 755 ../../../vendor/huawei/ideos/proprietary/bin/* 
