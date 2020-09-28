#
# Copyright (C) 2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=armbian-firmware
PKG_SOURCE_DATE:=2020-07-14
PKG_SOURCE_VERSION:=9c800d7e16616dd30cfd854f26e563fb675e3f8a
PKG_MIRROR_HASH:=52b8f40ed5713697da74c910e827afc16ab0fd8666121ebf555793b8b8f4d99e
PKG_RELEASE:=1
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/armbian/firmware.git

PKG_MAINTAINER:=

include $(INCLUDE_DIR)/package.mk

define Package/armbian-firmware-default
  SECTION:=firmware
  CATEGORY:=Firmware
  URL:=https://github.com/armbian
endef

define Build/Compile
	true
endef

# brcmfmac-firmware-43456-sdio
define Package/brcmfmac-firmware-43456-sdio
  $(Package/armbian-firmware-default)
  TITLE:=SDIO Firmware for ROCK Pi 4
  DEPENDS:=@TARGET_rockchip
endef

define Package/brcmfmac-firmware-43456-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/brcm/brcmfmac43456-sdio.bin \
		$(1)/lib/firmware/brcm/brcmfmac43456-sdio.bin
endef

$(eval $(call BuildPackage,brcmfmac-firmware-43456-sdio))

#  brcmfmac-43456 NVRAM for ROCK Pi 4
define Package/brcmfmac-nvram-43456-sdio
  $(Package/armbian-firmware-default)
  TITLE:= NVRAM for ROCK Pi 4
  DEPENDS:=@TARGET_rockchip
endef

define Package/brcmfmac-nvram-43456-sdio/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/brcm/brcmfmac43456-sdio.txt \
		$(1)/lib/firmware/brcm/brcmfmac43456-sdio.txt
endef

$(eval $(call BuildPackage,brcmfmac-nvram-43456-sdio))
