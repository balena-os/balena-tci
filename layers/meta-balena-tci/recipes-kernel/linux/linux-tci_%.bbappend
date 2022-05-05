inherit kernel-resin

KERNEL_IMAGETYPES_remove = "${ROCKCHIP_KERNEL_IMAGES}"

python () {
    # revert variable set in rockchip BSP
    d.setVar('KERNEL_IMAGETYPE_FOR_MAKE', d.getVar('KERNEL_IMAGETYPES'));
}
