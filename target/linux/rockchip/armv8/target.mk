ARCH:=aarch64
SUBTARGET:=armv8
BOARDNAME:=RK33xx boards (64 bit)
KERNEL_TESTING_PATCHVER:=5.11

define Target/Description
	Build firmware image for Rockchip RK33xx devices.
	This firmware features a 64 bit kernel.
endef
