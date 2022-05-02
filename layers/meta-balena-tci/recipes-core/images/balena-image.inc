IMAGE_CMD:balenaos-img:append () {
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/idblock.img of=${BALENA_RAW_IMG} bs=512 seek=64
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/uboot.img of=${BALENA_RAW_IMG} bs=512 seek=16384
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/trust.img of=${BALENA_RAW_IMG} bs=512 seek=24576
}

# in KiB
DEVICE_SPECIFIC_SPACE = "24576"

#BALENA_IMAGE_BOOTLOADER = "u-boot"
BALENA_BOOT_PARTITION_FILES:append = " \
    rk3288-evb-rk808-linux-4n-tci.dtb:/dtb \
    zImage:/zImage \
    ${DEPLOY_DIR_IMAGE}/loader.bin:/dbloader.bin \
"

#IMAGE_INSTALL:append = " kernel-image-initramfs kernel-devicetree"

BALENA_DISABLE_KERNEL_HEADERS = "1"
