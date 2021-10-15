#!/system/bin/sh
# This script is needed to automatically set device props.

load_citrus()
{
    resetprop "ro.product.model" "Poco M3"
    resetprop "ro.product.name" "citrus"
    resetprop "ro.build.product" "citrus"
    resetprop "ro.product.device" "citrus"
    resetprop "ro.vendor.product.device" "citrus"
}

load_lime()
{
    resetprop "ro.product.model" "Redmi 9T / 9 Power / Note 9 4G"
    resetprop "ro.product.name" "lime"
    resetprop "ro.build.product" "lime"
    resetprop "ro.product.device" "lime"
    resetprop "ro.vendor.product.device" "lime"
}

load_lemon()
{
    resetprop "ro.product.model" "Redmi 9T NFC"
    resetprop "ro.product.name" "lemon"
    resetprop "ro.build.product" "lemon"
    resetprop "ro.product.device" "lemon"
    resetprop "ro.vendor.product.device" "lemon"
}

load_pomelo()
{
    resetprop "ro.product.model" "Redmi 9T"
    resetprop "ro.product.name" "pomelo"
    resetprop "ro.build.product" "pomelo"
    resetprop "ro.product.device" "pomelo"
    resetprop "ro.vendor.product.device" "pomelo"
}


project=$(getprop ro.boot.product.hardware.sku)
echo $project

case $project in
    "citrus")
        load_citrus
        ;;
    "lime")
        load_lime
        ;;
    "lemon")
        load_lemon
        ;;
    "pomelo")
	load_pomelo
	;;
    *)
	load_citrus
	;;
esac

exit 0
