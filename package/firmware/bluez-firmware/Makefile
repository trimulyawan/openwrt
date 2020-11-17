#
# Copyright (C) 2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=bluez-firmware
PKG_SOURCE_DATE:=2020-10-16
PKG_SOURCE_VERSION:=929b7af9c43e7edc8b289435a9981b240f47b218
PKG_RELEASE:=1
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/RPi-Distro/bluez-firmware.git

PKG_MAINTAINER:=

include $(INCLUDE_DIR)/package.mk

define Package/bluez-firmware-default
  SECTION:=firmware
  CATEGORY:=Firmware
  URL:=https://github.com/RPi-Distro/bluez-firmware
endef

define Build/Compile
	true
endef

define Package/btbcm-firmware-4345c5
  $(Package/bluez-firmware-default)
  TITLE:=BCM4345C5 bluetooth firmware
endef

define Package/btbcm-firmware-4345c5/install
	$(INSTALL_DIR) $(1)/lib/firmware/brcm
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/broadcom/BCM4345C5.hcd \
		$(1)/lib/firmware/brcm/
endef
$(eval $(call BuildPackage,btbcm-firmware-4345c5))
