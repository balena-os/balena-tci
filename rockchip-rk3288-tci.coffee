deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

INSTALL_FLASHTOOL = "Install <a href=https://github.com/rockchip-linux/rkdeveloptool>rkdeveloptool</a>."
CHECK_MASKROM = "The assumption is that the board has an empty eMMC. Connect your board to your computer over the micro USB port and check the board is in maskrom mode:<br><em>sudo ./rkdeveloptool ld</em>"
SET_TO_USBPLUG_MODE = "Use this <a href=https://github.com/balena-os/balena-tci/blob/master/flashing_artifacts/loader.bin>loader</a> to init DRAM and set into usbplug mode:<br><em>sudo ./rkdeveloptool db loader.bin</em>"
FLASH_EMMC = "Write the OS to the internal MMC storage device:<br><em>sudo ./rkdeveloptool wl 0 &ltOS_image_downloaded_from_the_dashboard&gt</em>"
REBOOT_BOARD = "Reboot the board in balenaOS:<br><em>sudo ./rkdeveloptool rd</em>"

module.exports =
	version: 1
	slug: 'rockchip-rk3288-tci'
	name: 'E04 rk3288'
	arch: 'armv7hf'
	state: 'new'

	instructions: [
		INSTALL_FLASHTOOL
		CHECK_MASKROM
		SET_TO_USBPLUG_MODE
		FLASH_EMMC
		REBOOT_BOARD
	]

	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/rockchip-rk3288-tci/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/rockchip-rk3288-tci/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/rockchip-rk3288-tci/nodejs/'

	yocto:
		machine: 'rockchip-rk3288-tci'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-dunfell'
		deployArtifact: 'balena-image-rockchip-rk3288-tci.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
