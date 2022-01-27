IMAGE_FSTYPES_append = " balenaos-img"

IMAGE_CMD_balenaos-img_append () {
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/idblock.img of=${BALENA_RAW_IMG} bs=512 seek=64
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/uboot.img of=${BALENA_RAW_IMG} bs=512 seek=16384
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/trust.img of=${BALENA_RAW_IMG} bs=512 seek=24576
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/boot.img of=${BALENA_RAW_IMG} bs=512 seek=32768
}

# in KiB
DEVICE_SPECIFIC_SPACE = "24576"

#BALENA_IMAGE_BOOTLOADER = "u-boot"
#BALENA_BOOT_PARTITION_FILES_append = " \
#    rk3288-evb-rk808-linux-4n-tci-rockchip-rk3288-tci.dtb
#    zImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/zImage \
#    zImage-${KERNEL_DEVICETREE}:/firefly-rk3288.dtb \
#    ${DEPLOY_DIR_IMAGE}/idbloader.img:/idbloader.img \
#"
#
#IMAGE_INSTALL_append = " kernel-image-initramfs kernel-devicetree"
