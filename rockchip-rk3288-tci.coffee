deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'rockchip-rk3288-tci'
	name: 'E04 rk3288'
	arch: 'armv7hf'
	state: 'new'

	instructions: commonImg.instructions

	gettingStartedLink:
		windows: 'https://www.balena.io/'
		osx: 'https://www.balena.io/'
		linux: 'https://www.balena.io/'

	yocto:
		machine: 'rockchip-rk3288-tci'
		image: 'balena-image'
		fstype: 'balenaos-img'
		version: 'yocto-honister'
		deployArtifact: 'balena-image-rockchip-rk3288-tci.balenaos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
