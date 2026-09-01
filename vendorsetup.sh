echo RisingOS: cloning missing deps...
MTK_SEPOLICY=device/mediatek/sepolicy_vndr/SEPolicy.mk
if ! [ -a $MTK_SEPOLICY ]; then git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr
fi
MTK=hardware/mediatek/Android.bp
if ! [ -a $MTK ]; then git clone https://github.com/LineageOS/android_hardware_mediatek hardware/mediatek
fi
OPLUS=hardware/oplus/Android.bp
if ! [ -a $OPLUS ]; then git clone https://github.com/LineageOS/android_hardware_oplus hardware/oplus
fi
VT-IMS=vendor/mediatek/ims/ims.mk
if ! [ -a $VT-IMS ]; then git clone https://github.com/techyminati/android_vendor_mediatek_ims.git vendor/mediatek/ims
fi
DOLBY=hardware/dolby/dolby.mk
if ! [ -a $DOLBY ]; then git clone -b sony-1.2 https://github.com/swiitch-OFF-Lab/hardware_dolby.git hardware/dolby
fi
