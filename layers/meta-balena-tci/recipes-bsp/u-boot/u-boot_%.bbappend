inherit resin-u-boot

UBOOT_KCONFIG_SUPPORT = "1"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-rockchip-rk3288-add-resin-specific-boot-command.patch"
