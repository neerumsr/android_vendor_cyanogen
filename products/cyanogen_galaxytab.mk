# Inherit device configuration for GalaxyTab.
$(call inherit-product, device/samsung/galaxytab/device_galaxytab.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_galaxytab
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxytab
PRODUCT_MODEL := GT-P1000
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# Euro Tab
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P1000 BUILD_ID=FROYO BUILD_DISPLAY_ID=FROYO.XXJK5 BUILD_FINGERPRINT=samsung/GT-P1000/GT-P1000/GT-P1000:2.2/FROYO/XXJK5:user/release-keys PRIVATE_BUILD_DESC="GT-P1000-user 2.2 FROYO XXJK5 release-keys"

# for ATT Tab
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I987 BUILD_ID=FROYO BUILD_DISPLAY_ID=FROYO.UCJK1 BUILD_FINGERPRINT=samsung/SGH-I987/SGH-I987/SGH-I987:2.2/FROYO/UCJK1:user/release-keys PRIVATE_BUILD_DESC="SGH-I987-user 2.2 FROYO UCJK1 release-keys"

# for TMO Tab
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T849 BUILD_ID=FROYO BUILD_DISPLAY_ID=FROYO.UVJJB BUILD_FINGERPRINT=samsung/SGH-T849/SGH-T849/SGH-T849:2.2/FROYO/UVJJB:user/release-keys PRIVATE_BUILD_DESC="SGH-T849-user 2.2 FROYO UVJJB release-keys"

# Add the FM app
#PRODUCT_PACKAGES += FM

# Extra galaxytab overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/galaxytab

# Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel/samsung/2.6.35-tab
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=p1_cm7_defconfig
#PRODUCT_SPECIFIC_DEFINES += TARGETARCH=arm

# Add additional mounts
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.removablemounts=/mnt/emmc

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7--NIGHTLY-GalaxyTab
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-Beta-GalaxyTab
    else
#        PRODUCT_PROPERTY_OVERRIDES += \
#            ro.modversion=CyanogenMod-7.1.0-Beta-GalaxyTab-KANG
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7-$(shell date +%Y-%m-%d)-Beta-GalaxyTab-KANG
    endif
endif

#
# Copy galaxytab specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
