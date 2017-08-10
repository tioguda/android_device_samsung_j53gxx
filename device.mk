PRODUCT_PROPERTY_OVERRIDES := \
    ro.ota.romname=Tesla-j53gxx \
    ro.ota.version=$(shell date +%F%H | sed s@-@@g) \
    ro.ota.manifest=https://basketbuild.com/uploads/devs/tioguda/Tesla/j53gxx/7.1.2/j53gxx.xml

#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/j53gxx/j53gxx-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/j5-common/device-common.mk)

LOCAL_PATH := device/samsung/j53gxx

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
