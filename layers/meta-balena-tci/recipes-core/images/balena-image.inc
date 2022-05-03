IMAGE_CMD:balenaos-img:append () {
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/idblock.img of=${BALENA_RAW_IMG} bs=512 seek=64
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/uboot.img of=${BALENA_RAW_IMG} bs=512 seek=16384
    dd conv=notrunc,fsync if=${DEPLOY_DIR_IMAGE}/trust.img of=${BALENA_RAW_IMG} bs=512 seek=24576
}

# we need some space before our partitions in order to write the boot binaries, as per http://opensource.rock-chips.com/wiki_Boot_option#Boot_flow
DEVICE_SPECIFIC_SPACE = "20480"

# add the dtb and u-boot binaries to rootfs /boot directory
IMAGE_INSTALL:append = " \
    kernel-devicetree \
    u-boot-bins \
"

BALENA_DISABLE_KERNEL_HEADERS = "1"
